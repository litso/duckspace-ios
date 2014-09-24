//
//  LocationAuthorizationViewController.swift
//  DuckSpace
//
//  Created by Robert Manson on 9/11/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import UIKit

class LocationAuthorizationViewController: UIViewController, BeaconManagerAuthorizationDelegate {
//    let beaconManager: ESTBeaconManager = ESTBeaconManager()
    override func viewDidLoad() {
        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        beaconManager.delegate = self
//        var beaconRegion: ESTBeaconRegion = ESTBeaconRegion(proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D"), identifier: "Your Mom's House")
//        beaconManager.startRangingBeaconsInRegion(beaconRegion)
        println("You are now kicking it in duck space")
        
        BeaconManager.sharedInstance.authorizationDelegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func allowAccessAction(sender: UIButton) {
        BeaconManager.sharedInstance.start()
    }
    //MARK: BeaconManagerAuthorizationDelegate
    func authorizationCompleted(#wasSuccess: Bool) {
        if wasSuccess {
            dismissViewControllerAnimated(false, completion: nil)
        }
        else {
            performSegueWithIdentifier("LocationAccessDenied", sender: self)
        }
    }
}

