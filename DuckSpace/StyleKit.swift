//
//  StyleKit.swift
//  DuckSpace
//
//  Created by Lu Zhu on 9/26/14.
//  Copyright (c) 2014 Lu Zhu. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

class StyleKit : NSObject {

    //// Initialization

    override class func load() {
    }

    //// Drawing Methods

    class func drawRadar(frame: CGRect, angle: CGFloat) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let lightGreenBorder = UIColor(red: 0.556, green: 0.797, blue: 0.395, alpha: 1.000)
        let darkGreenBorder = UIColor(red: 0.325, green: 0.431, blue: 0.271, alpha: 1.000)
        let darkGreenFill = UIColor(red: 0.094, green: 0.165, blue: 0.078, alpha: 1.000)
        let color = UIColor(red: 0.477, green: 0.676, blue: 0.397, alpha: 0.249)
        let gradientColor3 = UIColor(red: 0.325, green: 0.431, blue: 0.271, alpha: 0.000)

        //// Gradient Declarations
        let gradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [gradientColor3.CGColor, UIColor(red: 0.441, green: 0.614, blue: 0.333, alpha: 0.500).CGColor, lightGreenBorder.CGColor], [0, 0.38, 1])

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRectMake(0, 0, 150, 150))
        darkGreenFill.setFill()
        rectanglePath.fill()


        //// Grid
        //// HGrid
        //// Bezier 9 Drawing
        var bezier9Path = UIBezierPath()
        bezier9Path.moveToPoint(CGPointMake(0, 138.5))
        bezier9Path.addLineToPoint(CGPointMake(150, 138.5))
        darkGreenBorder.setStroke()
        bezier9Path.lineWidth = 1
        bezier9Path.stroke()


        //// Bezier 8 Drawing
        var bezier8Path = UIBezierPath()
        bezier8Path.moveToPoint(CGPointMake(0, 122.5))
        bezier8Path.addLineToPoint(CGPointMake(150, 122.5))
        darkGreenBorder.setStroke()
        bezier8Path.lineWidth = 1
        bezier8Path.stroke()


        //// Bezier 7 Drawing
        var bezier7Path = UIBezierPath()
        bezier7Path.moveToPoint(CGPointMake(0, 106.5))
        bezier7Path.addLineToPoint(CGPointMake(150, 106.5))
        darkGreenBorder.setStroke()
        bezier7Path.lineWidth = 1
        bezier7Path.stroke()


        //// Bezier 6 Drawing
        var bezier6Path = UIBezierPath()
        bezier6Path.moveToPoint(CGPointMake(0, 90.5))
        bezier6Path.addLineToPoint(CGPointMake(150, 90.5))
        darkGreenBorder.setStroke()
        bezier6Path.lineWidth = 1
        bezier6Path.stroke()


        //// Bezier 5 Drawing
        var bezier5Path = UIBezierPath()
        bezier5Path.moveToPoint(CGPointMake(0, 10.5))
        bezier5Path.addLineToPoint(CGPointMake(150, 10.5))
        darkGreenBorder.setStroke()
        bezier5Path.lineWidth = 1
        bezier5Path.stroke()


        //// Bezier 4 Drawing
        var bezier4Path = UIBezierPath()
        bezier4Path.moveToPoint(CGPointMake(0, 26.5))
        bezier4Path.addLineToPoint(CGPointMake(150, 26.5))
        darkGreenBorder.setStroke()
        bezier4Path.lineWidth = 1
        bezier4Path.stroke()


        //// Bezier 3 Drawing
        var bezier3Path = UIBezierPath()
        bezier3Path.moveToPoint(CGPointMake(0, 42.5))
        bezier3Path.addLineToPoint(CGPointMake(150, 42.5))
        darkGreenBorder.setStroke()
        bezier3Path.lineWidth = 1
        bezier3Path.stroke()


        //// Bezier 2 Drawing
        var bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPointMake(0, 58.5))
        bezier2Path.addLineToPoint(CGPointMake(150, 58.5))
        darkGreenBorder.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()


        //// Bezier Drawing
        var bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(0, 74.5))
        bezierPath.addLineToPoint(CGPointMake(150, 74.5))
        darkGreenBorder.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()




        //// VGrid
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 11.5, 150)
        CGContextRotateCTM(context, -90 * M_PI / 180)



        //// Bezier 10 Drawing
        var bezier10Path = UIBezierPath()
        bezier10Path.moveToPoint(CGPointMake(150, 0))
        bezier10Path.addLineToPoint(CGPointMake(0, 0))
        darkGreenBorder.setStroke()
        bezier10Path.lineWidth = 1
        bezier10Path.stroke()


        //// Bezier 11 Drawing
        var bezier11Path = UIBezierPath()
        bezier11Path.moveToPoint(CGPointMake(150, 16))
        bezier11Path.addLineToPoint(CGPointMake(0, 16))
        darkGreenBorder.setStroke()
        bezier11Path.lineWidth = 1
        bezier11Path.stroke()


        //// Bezier 12 Drawing
        var bezier12Path = UIBezierPath()
        bezier12Path.moveToPoint(CGPointMake(150, 32))
        bezier12Path.addLineToPoint(CGPointMake(0, 32))
        darkGreenBorder.setStroke()
        bezier12Path.lineWidth = 1
        bezier12Path.stroke()


        //// Bezier 13 Drawing
        var bezier13Path = UIBezierPath()
        bezier13Path.moveToPoint(CGPointMake(150, 48))
        bezier13Path.addLineToPoint(CGPointMake(0, 48))
        darkGreenBorder.setStroke()
        bezier13Path.lineWidth = 1
        bezier13Path.stroke()


        //// Bezier 14 Drawing
        var bezier14Path = UIBezierPath()
        bezier14Path.moveToPoint(CGPointMake(150, 128))
        bezier14Path.addLineToPoint(CGPointMake(0, 128))
        darkGreenBorder.setStroke()
        bezier14Path.lineWidth = 1
        bezier14Path.stroke()


        //// Bezier 15 Drawing
        var bezier15Path = UIBezierPath()
        bezier15Path.moveToPoint(CGPointMake(150, 112))
        bezier15Path.addLineToPoint(CGPointMake(0, 112))
        darkGreenBorder.setStroke()
        bezier15Path.lineWidth = 1
        bezier15Path.stroke()


        //// Bezier 16 Drawing
        var bezier16Path = UIBezierPath()
        bezier16Path.moveToPoint(CGPointMake(150, 96))
        bezier16Path.addLineToPoint(CGPointMake(0, 96))
        darkGreenBorder.setStroke()
        bezier16Path.lineWidth = 1
        bezier16Path.stroke()


        //// Bezier 17 Drawing
        var bezier17Path = UIBezierPath()
        bezier17Path.moveToPoint(CGPointMake(150, 80))
        bezier17Path.addLineToPoint(CGPointMake(0, 80))
        darkGreenBorder.setStroke()
        bezier17Path.lineWidth = 1
        bezier17Path.stroke()


        //// Bezier 18 Drawing
        var bezier18Path = UIBezierPath()
        bezier18Path.moveToPoint(CGPointMake(150, 64))
        bezier18Path.addLineToPoint(CGPointMake(0, 64))
        darkGreenBorder.setStroke()
        bezier18Path.lineWidth = 1
        bezier18Path.stroke()


        //// Bezier 19 Drawing
        var bezier19Path = UIBezierPath()
        darkGreenBorder.setStroke()
        bezier19Path.lineWidth = 1
        bezier19Path.stroke()



        CGContextRestoreGState(context)




        //// Radial
        //// Oval Drawing
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(frame.minX, frame.minY, 144.5, 143.5))
        color.setFill()
        ovalPath.fill()
        lightGreenBorder.setStroke()
        ovalPath.lineWidth = 1
        ovalPath.stroke()


        //// Oval 2 Drawing
        var oval2Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 16.5, frame.minY + 15.5, 112, 112))
        lightGreenBorder.setStroke()
        oval2Path.lineWidth = 1
        oval2Path.stroke()


        //// Oval 3 Drawing
        var oval3Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 32.5, frame.minY + 31.5, 80, 80))
        lightGreenBorder.setStroke()
        oval3Path.lineWidth = 1
        oval3Path.stroke()


        //// Oval 4 Drawing
        var oval4Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 48.5, frame.minY + 47.5, 48, 48))
        lightGreenBorder.setStroke()
        oval4Path.lineWidth = 1
        oval4Path.stroke()


        //// Oval 5 Drawing
        var oval5Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 64.5, frame.minY + 63.5, 16, 16))
        lightGreenBorder.setStroke()
        oval5Path.lineWidth = 1
        oval5Path.stroke()




        //// Sweep Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, frame.minX + 72.5, frame.minY + 71.5)
        CGContextRotateCTM(context, -angle * M_PI / 180)

        var sweepPath = UIBezierPath()
        sweepPath.moveToPoint(CGPointMake(0, -0))
        sweepPath.addLineToPoint(CGPointMake(72, 0))
        sweepPath.addLineToPoint(CGPointMake(72, -2.93))
        sweepPath.addLineToPoint(CGPointMake(71.42, -5.66))
        sweepPath.addLineToPoint(CGPointMake(0, -0))
        sweepPath.closePath()
        lightGreenBorder.setFill()
        sweepPath.fill()

        CGContextRestoreGState(context)


        //// Sweep Gradient Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, frame.minX + 72.5, frame.minY + 71.5)
        CGContextRotateCTM(context, -angle * M_PI / 180)

        var sweepGradientPath = UIBezierPath()
        sweepGradientPath.moveToPoint(CGPointMake(0, 0))
        sweepGradientPath.addLineToPoint(CGPointMake(50.81, -50.62))
        sweepGradientPath.addLineToPoint(CGPointMake(59.74, -39.76))
        sweepGradientPath.addLineToPoint(CGPointMake(61.62, -37.06))
        sweepGradientPath.addLineToPoint(CGPointMake(64.46, -31.45))
        sweepGradientPath.addLineToPoint(CGPointMake(67.26, -23.77))
        sweepGradientPath.addLineToPoint(CGPointMake(68.96, -18.86))
        sweepGradientPath.addLineToPoint(CGPointMake(70.23, -13.7))
        sweepGradientPath.addLineToPoint(CGPointMake(71.5, -6.41))
        sweepGradientPath.addLineToPoint(CGPointMake(71.5, -0.5))
        sweepGradientPath.addLineToPoint(CGPointMake(0, 0))
        sweepGradientPath.closePath()
        CGContextSaveGState(context)
        sweepGradientPath.addClip()
        let sweepGradientRotatedPath = UIBezierPath()
        sweepGradientRotatedPath.appendPath(sweepGradientPath)
        var sweepGradientTransform = CGAffineTransformMakeRotation(45*(-M_PI/180))
        sweepGradientRotatedPath.applyTransform(sweepGradientTransform)
        var sweepGradientBounds = CGPathGetPathBoundingBox(sweepGradientRotatedPath.CGPath)
        sweepGradientTransform = CGAffineTransformInvert(sweepGradientTransform)

        CGContextDrawLinearGradient(context, gradient,
            CGPointApplyAffineTransform(CGPointMake(sweepGradientBounds.minX, sweepGradientBounds.midY), sweepGradientTransform),
            CGPointApplyAffineTransform(CGPointMake(sweepGradientBounds.maxX, sweepGradientBounds.midY), sweepGradientTransform),
            0)
        CGContextRestoreGState(context)

        CGContextRestoreGState(context)
    }

}

@objc protocol StyleKitSettableImage {
    var image: UIImage! { get set }
}

@objc protocol StyleKitSettableSelectedImage {
    var selectedImage: UIImage! { get set }
}