//
//  DuckButton.swift
//  DuckSpace
//
//  Created by Robert Manson on 9/27/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import UIKit

class DuckButton: UIButton {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addObserver(self, forKeyPath: "highlighted", options: NSKeyValueObservingOptions.New, context: nil)
    }
    
    override func observeValueForKeyPath(keyPath: String!, ofObject object: AnyObject!, change: [NSObject : AnyObject]!, context: UnsafeMutablePointer<Void>) {
        self .setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect)
    {
        let frame = UIEdgeInsetsInsetRect(bounds, contentEdgeInsets)
        StyleKit.drawDuck(frame, highlighted: highlighted)
    }

}
