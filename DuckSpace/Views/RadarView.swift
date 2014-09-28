//
//  RadarView.swift
//  DuckSpace
//
//  Created by Lu Zhu on 9/27/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import UIKit

class RadarView: UIView {
    var angle: CGFloat = 0.0
    var animating: Bool = false
    
    override func drawRect(rect: CGRect) {
        StyleKit.drawRadar(self.bounds, angle: angle)
    }
    
    func startAnimation() {
        animating = true
        animate()
    }
    
    func stopAnimation() {
        animating = false
    }
    
    func animate() {
        if animating {
            UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: {[weak self] in
                if let wSelf = self {
                    wSelf.angle -= 1.0
                    wSelf.setNeedsDisplay()
                }
                }, completion: {[weak self] (complete) in
                    if complete {
                        if let wSelf = self {
                            wSelf.animate()
                        }
                    }
                })
        }

    }
}
