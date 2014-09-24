//
//  RootViewController.swift
//  DuckSpace
//
//  Created by Robert Manson on 9/23/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import UIKit

class RootViewController: UINavigationController, BeaconManagerDiscoveryDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        performSegueWithIdentifier("AuthorizeLocation", sender: self)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        println("Appeared")
        switch CLLocationManager.authorizationStatus() as CLAuthorizationStatus {
        case .Authorized:
            println("Already authorized")
            break
        default:
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewControllerWithIdentifier("LocationAuthorization") as UIViewController
            presentViewController(vc, animated: false) {
                BeaconManager.sharedInstance.discoveryDelegate = self
            }
        }
    }
    //MARK: BeaconManagerDiscoveryDelegate
    func discoveredBeacon(#major: String, minor: String, proximity: CLProximity) {
        
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
