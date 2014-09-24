//
//  BeaconManager.swift
//  DuckSpace
//
//  Created by Robert Manson on 9/11/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import CoreLocation
import UIKit

// General search criteria for beacons that are broadcasting
let BEACON_SERVICE_NAME = "estimote"
let BEACON_PROXIMITY_UUID = NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")

// Beacons are hardcoded into our app so we can easily filter for them in a noisy environment
let BEACON_PURPLE_MAJOR = "60463"
let BEACON_PURPLE_MINOR = "56367"
let BEACON_GREEN_MAJOR = "544"
let BEACON_GREEN_MINOR = "50962"
let BEACON_BLUE_MAJOR = "23680"
let BEACON_BLUE_MINOR = "7349"

protocol BeaconManagerAuthorizationDelegate {
    func authorizationCompleted(#wasSuccess: Bool)
}
protocol BeaconManagerDiscoveryDelegate {
    func discoveredBeacon(#major: String, minor: String, proximity: CLProximity)
}
class BeaconManager: NSObject, CLLocationManagerDelegate    {
    var locationManager: CLLocationManager = CLLocationManager()
    let registeredBeaconMajor: [String] = [BEACON_BLUE_MAJOR, BEACON_GREEN_MAJOR, BEACON_PURPLE_MAJOR]
    let estimoteRegion: CLBeaconRegion = CLBeaconRegion(proximityUUID:BEACON_PROXIMITY_UUID, identifier:"Estimote Region")
    var authorizationDelegate: BeaconManagerAuthorizationDelegate?
    var discoveryDelegate: BeaconManagerDiscoveryDelegate?
    class var sharedInstance:BeaconManager {
    return sharedBeaconManager
    }
    override init() {
        super.init()
//        estimoteRegion.notifyEntryStateOnDisplay = true
//        estimoteRegion.notifyOnEntry = true
//        estimoteRegion.notifyOnExit = true
        locationManager.delegate = self
    }
    func start() {
        switch CLLocationManager.authorizationStatus() as CLAuthorizationStatus {
        case .Authorized:
            println("Beacon Manager: Already authorized")
            self.authorizationDelegate?.authorizationCompleted(wasSuccess: true)
        case .NotDetermined:
            println("Beacon Manager: Not Determined")
            self.locationManager.requestAlwaysAuthorization()
        default:
            authorizationFailed()
        }
    }
    func stop() {
        println("BM stop");
        locationManager.stopMonitoringForRegion(estimoteRegion)
    }
    
    //  MARK: CLLocationManagerDelegate methods
    
    func locationManager(manager: CLLocationManager, didStartMonitoringForRegion region: CLRegion) {
        println("BM didStartMonitoringForRegion");
        locationManager.requestStateForRegion(region); // should locationManager be manager?
    }
    func locationManager(manager: CLLocationManager!, didDetermineState state: CLRegionState, forRegion region: CLRegion!) {
        println("BM didDetermineState \(state)");
        
        switch state {
        case .Inside:
            println("BeaconManager:didDetermineState CLRegionState.Inside");
            locationManager.startRangingBeaconsInRegion(estimoteRegion) // should locationManager be manager?
        case .Outside:
            println("BeaconManager:didDetermineState CLRegionState.Outside");
        case .Unknown:
            println("BeaconManager:didDetermineState CLRegionState.Unknown");
        default:
            println("BeaconManager:didDetermineState default");
        }
    }
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        switch status {
        case .Authorized:
            authorizationDelegate?.authorizationCompleted(wasSuccess: true)
            startMonitoringRegion()
        case .NotDetermined:
            break
        default:
            authorizationDelegate?.authorizationCompleted(wasSuccess: false)
            authorizationFailed()
        }
    }
    func locationManager(manager: CLLocationManager!, monitoringDidFailForRegion region: CLRegion!, withError error: NSError!) {
        println("Beacon Manager: Error monitoring domain: \(error.localizedDescription)")
    }
    func locationManager(manager: CLLocationManager!, didRangeBeacons beacons: [CLBeacon]!, inRegion region: CLBeaconRegion!) {
        println("Beacon Manager: didRangeBeacons");
        
//        for beacon: CLBeacon in beacons {
//            // TODO: better way to unwrap optionals?
//            if let major: String = beacon.major?.stringValue? {
//                if let minor: String = beacon.minor?.stringValue? {
//                    let contained: Bool = contains(registeredBeaconMajor, major)
//                    let active: Bool = (UIApplication.sharedApplication().applicationState == UIApplicationState.Active)
//                    if contained && active {
//                        delegate?.discoveredBeacon(major: major, minor: minor, proximity: beacon.proximity)
//                    }
//                }
//            }
//        }
    }
    
    // MARK: Private
    
    private func startMonitoringRegion() {
        println("Beacon Manager:  started");
        locationManager.startMonitoringForRegion(estimoteRegion)
    }
    private func authorizationFailed() {
        println("Beacon Manager: restricted bro")
        self.authorizationDelegate?.authorizationCompleted(wasSuccess: false)
    }
}


let sharedBeaconManager = BeaconManager()