//
//  HttpClient.swift
//  Riva
//
//  Created by Robert Manson on 7/11/14.
//  Copyright (c) 2014 AGOGO Amalgamated, Inc. All rights reserved.
//

import UIKit

let _HttpClientSharedInstance = HttpClient()

class HttpClient: AFHTTPSessionManager {
    enum Path: String {
        case RegisterGuestAccount = "/user/new"
        case PostImage = "/upload"

    }
    //Set by account
    var registrationToken = ""
    class var sharedInstance : HttpClient {
        return _HttpClientSharedInstance
    }
    override init(baseURL url: NSURL!) {
        super.init(baseURL: url, sessionConfiguration: nil)
        self.responseSerializer = AFJSONResponseSerializer()
        self.requestSerializer = AFJSONRequestSerializer()
    }
    convenience override init() {
        let apiUrl = NSURL.URLWithString("http://duckspace.herokuapp.com")
        self.init(baseURL: apiUrl)
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func register(onError: (NSError) -> Void, onSuccess: (Void) -> Void) -> Void {
        self.POST(Path.RegisterGuestAccount.toRaw(), parameters: nil, success: {[weak self] task, result in
            let json = JSON(result)
            println("HERE")
            println(json)
            let results = json["results"]
            let firstResult = results?[0]
            let idValue = firstResult?["id"]
            if let token = idValue?.number {
                self?.registrationToken = "\(token)"
            }

            
//            let response = CleanResponse(response: result)
//            println(response)
//            switch response {
//            case .Result(let result):
//                let json = JSON(result)
//                if let token = json["results"]?[0]?["id"]?.string {
//                    self?.registrationToken = token
//                }
//            default:
//                assert(0)
//            }

            },
            failure: {task, error in
                onError(error)
            })
    }
    func postImage(imageData: NSData, onError: (NSError) -> Void, onSuccess: (Void) -> Void) -> Void {
        
        var params = [String: AnyObject]()
        params["user_id"] = registrationToken
        params["location_id"] = "1"
//        self.POST(Path.PostImage.toRaw(), parameters: params, success: {[weak self] task, result in
//            let json = JSON(result)
//            println("HERE")
//            println(json)
//
//            },
//            failure: {task, error in
//                onError(error)
//        })
        
        self.POST(Path.PostImage.toRaw(), parameters: params, constructingBodyWithBlock: { (data: AFMultipartFormData!) in
            data.appendPartWithFileData(imageData, name: "file", fileName: "image.jpg", mimeType: "image/jpeg")
            }, success: {[weak self] task, result in
                let json = JSON(result)
                println("HERE")
                println(json)
                
            },
            failure: {task, error in
                onError(error)
        })


    }
    enum CleanResponse {
        case Result([String: AnyObject])
        case Error(NSError)

        init(response: AnyObject) {
            let unknownErrorUserInfo: [String: String] = [NSLocalizedFailureReasonErrorKey: "Unexpected server error"]
            func getError(code: Int, userInfo: [String: String]) -> NSError {
                return NSError.errorWithDomain("AGAPIErrorDomain", code: code, userInfo: userInfo)
            }
            func getUserInfo(json: JSON) -> [String: String] {
                var userInfo = unknownErrorUserInfo
                
                if let description = json["error_description"]?.string! {
                    userInfo[NSLocalizedDescriptionKey] = description
                }
                if let name = json["error_name"]?.string! {
                    userInfo[NSLocalizedFailureReasonErrorKey] = name
                }
                return userInfo
            }
            if let jsonResult = response as? [String: AnyObject] {
                let cleanedResult = NSDictionary(dictionary: jsonResult) as [String: AnyObject]
                let cleanedJson = JSON(cleanedResult)
                if let result = cleanedJson["error"]?.number! {
                    if result == 0 {
                        self = .Result(cleanedResult)
                    }
                    else {
                        let error = getError(Int(result), getUserInfo(cleanedJson))
                        self = .Error(error)
                    }
                }
                else {
                    self = .Error(getError(-1, getUserInfo(cleanedJson)))
                }
            }
            else {
                self = .Error(getError(-1, unknownErrorUserInfo))
            }
        }
    }
    func setAuthorizationHeaderWithToken(token: String) {
        assert(countElements(token) > 0)
        self.requestSerializer.setValue("Token \(self.registrationToken)", forHTTPHeaderField: "Authorization")
    }
}
