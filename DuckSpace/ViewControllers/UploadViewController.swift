//
//  UploadViewController.swift
//  DuckSpace
//
//  Created by Robert Manson on 9/27/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import UIKit

class UploadViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!
    var mySelfie: UIImage?
    var mySelfieData: NSData?
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func unwindingToRangingView(segue: UIStoryboardSegue) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.hidden = true
        progressView.progress = 0.0
        if let image = mySelfie {
            imageView.image = image
        }
    }
    // MARK: - Actions
    
    @IBAction func uploadButtonPressed(sender: UIButton) {
        progressView.hidden = false
        HttpClient.sharedInstance.postImage(mySelfieData!, onError: { error in
            
            }) {
                println("Success")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
