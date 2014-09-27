//
//  Beacons.swift
//  DuckSpace
//
//  Created by Robert Manson on 9/27/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import UIKit

enum Beacon: Int {
    case LightBlue = 1
    case LightGreen = 2
    case Purple = 3
    func stringValue() -> String {
        switch self {
        case .LightBlue:
            return "Light Blue"
        case .LightGreen:
            return "Light Green"
        case .Purple:
            return "Purple"
        }
    }
}