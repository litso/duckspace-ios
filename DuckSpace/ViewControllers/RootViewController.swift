//
//  RootViewController.swift
//  DuckSpace
//
//  Created by Robert Manson on 9/23/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import UIKit

class RootViewController: UINavigationController, BeaconManagerDiscoveryDelegate {
    var rangingViewController: RangingViewController?
    var inRange: [CLBeacon] = []
    var showingRange: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        performSegueWithIdentifier("AuthorizeLocation", sender: self)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        rangingViewController = storyBoard.instantiateViewControllerWithIdentifier("Ranging") as? RangingViewController
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
            BeaconManager.sharedInstance.discoveryDelegate = self
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
    
    func updatedInRange(#beacons: [CLBeacon]) {
        inRange = beacons
        if inRange.count > 0 {
            if !showingRange {
                showingRange = true
                presentViewController(rangingViewController!, animated: false) {[weak self] in
                    if let wSelf = self {
                        wSelf.updateRangeDistance()
                    }
                }
            }
            else {
                showingRange = true
                self.updateRangeDistance()
            }
        }
        else {
            rangingViewController?.outOfRange {[weak self] in
                if let wSelf = self {
                    wSelf.showingRange = false
                }
            }
        }
    }
    // MARK: - Private
    func updateRangeDistance(){
        inRange.sort {a, b in
            a.accuracy < b.accuracy
        }
        let nearestBeacon = inRange[0]
        let beacon = Beacon.fromRaw(nearestBeacon.minor)
        rangingViewController?.distanceLabel.text = "Nearest DuckSpace is \(beacon!.stringValue()): \(nearestBeacon.accuracy)"
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
