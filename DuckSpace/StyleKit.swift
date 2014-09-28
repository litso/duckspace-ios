//
//  StyleKit.swift
//  DuckSpace
//
//  Created by Lu Zhu on 9/27/14.
//  Copyright (c) 2014 Lu Zhu. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class StyleKit : NSObject {

    //// Drawing Methods

    public class func drawRadar(frame: CGRect, angle: CGFloat) {
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
        let rectanglePath = UIBezierPath(rect: CGRectMake(frame.minX, frame.minY, 150, 150))
        darkGreenFill.setFill()
        rectanglePath.fill()


        //// Grid
        //// HGrid
        //// Bezier 9 Drawing
        var bezier9Path = UIBezierPath()
        bezier9Path.moveToPoint(CGPointMake(frame.minX, frame.minY + 138.5))
        bezier9Path.addLineToPoint(CGPointMake(frame.minX + 150, frame.minY + 138.5))
        darkGreenBorder.setStroke()
        bezier9Path.lineWidth = 1
        bezier9Path.stroke()


        //// Bezier 8 Drawing
        var bezier8Path = UIBezierPath()
        bezier8Path.moveToPoint(CGPointMake(frame.minX, frame.minY + 122.5))
        bezier8Path.addLineToPoint(CGPointMake(frame.minX + 150, frame.minY + 122.5))
        darkGreenBorder.setStroke()
        bezier8Path.lineWidth = 1
        bezier8Path.stroke()


        //// Bezier 7 Drawing
        var bezier7Path = UIBezierPath()
        bezier7Path.moveToPoint(CGPointMake(frame.minX, frame.minY + 106.5))
        bezier7Path.addLineToPoint(CGPointMake(frame.minX + 150, frame.minY + 106.5))
        darkGreenBorder.setStroke()
        bezier7Path.lineWidth = 1
        bezier7Path.stroke()


        //// Bezier 6 Drawing
        var bezier6Path = UIBezierPath()
        bezier6Path.moveToPoint(CGPointMake(frame.minX, frame.minY + 90.5))
        bezier6Path.addLineToPoint(CGPointMake(frame.minX + 150, frame.minY + 90.5))
        darkGreenBorder.setStroke()
        bezier6Path.lineWidth = 1
        bezier6Path.stroke()


        //// Bezier 5 Drawing
        var bezier5Path = UIBezierPath()
        bezier5Path.moveToPoint(CGPointMake(frame.minX, frame.minY + 10.5))
        bezier5Path.addLineToPoint(CGPointMake(frame.minX + 150, frame.minY + 10.5))
        darkGreenBorder.setStroke()
        bezier5Path.lineWidth = 1
        bezier5Path.stroke()


        //// Bezier 4 Drawing
        var bezier4Path = UIBezierPath()
        bezier4Path.moveToPoint(CGPointMake(frame.minX, frame.minY + 26.5))
        bezier4Path.addLineToPoint(CGPointMake(frame.minX + 150, frame.minY + 26.5))
        darkGreenBorder.setStroke()
        bezier4Path.lineWidth = 1
        bezier4Path.stroke()


        //// Bezier 3 Drawing
        var bezier3Path = UIBezierPath()
        bezier3Path.moveToPoint(CGPointMake(frame.minX, frame.minY + 42.5))
        bezier3Path.addLineToPoint(CGPointMake(frame.minX + 150, frame.minY + 42.5))
        darkGreenBorder.setStroke()
        bezier3Path.lineWidth = 1
        bezier3Path.stroke()


        //// Bezier 2 Drawing
        var bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPointMake(frame.minX, frame.minY + 58.5))
        bezier2Path.addLineToPoint(CGPointMake(frame.minX + 150, frame.minY + 58.5))
        darkGreenBorder.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()


        //// Bezier Drawing
        var bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(frame.minX, frame.minY + 74.5))
        bezierPath.addLineToPoint(CGPointMake(frame.minX + 150, frame.minY + 74.5))
        darkGreenBorder.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()




        //// VGrid
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, frame.minX + 11.5, frame.minY + 150)
        CGContextRotateCTM(context, -90 * CGFloat(M_PI) / 180)



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
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 2.75, frame.minY + 2.75, 144.5, 143.5))
        color.setFill()
        ovalPath.fill()
        lightGreenBorder.setStroke()
        ovalPath.lineWidth = 1
        ovalPath.stroke()


        //// Oval 2 Drawing
        var oval2Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 19.25, frame.minY + 18.25, 112, 112))
        lightGreenBorder.setStroke()
        oval2Path.lineWidth = 1
        oval2Path.stroke()


        //// Oval 3 Drawing
        var oval3Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 35.25, frame.minY + 34.25, 80, 80))
        lightGreenBorder.setStroke()
        oval3Path.lineWidth = 1
        oval3Path.stroke()


        //// Oval 4 Drawing
        var oval4Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 51.25, frame.minY + 50.25, 48, 48))
        lightGreenBorder.setStroke()
        oval4Path.lineWidth = 1
        oval4Path.stroke()


        //// Oval 5 Drawing
        var oval5Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 67.25, frame.minY + 66.25, 16, 16))
        lightGreenBorder.setStroke()
        oval5Path.lineWidth = 1
        oval5Path.stroke()




        //// Sweep Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, frame.minX + 75.5, frame.minY + 74.5)
        CGContextRotateCTM(context, -angle * CGFloat(M_PI) / 180)

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
        CGContextTranslateCTM(context, frame.minX + 75.5, frame.minY + 74.5)
        CGContextRotateCTM(context, -angle * CGFloat(M_PI) / 180)

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
        var sweepGradientTransform = CGAffineTransformMakeRotation(45*(-CGFloat(M_PI)/180))
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

    public class func drawDuck(frame: CGRect, highlighted: Bool) {
        //// Color Declarations
        let duckYellow = UIColor(red: 1.000, green: 0.961, blue: 0.000, alpha: 1.000)


        //// Subframes
        let group: CGRect = CGRectMake(frame.minX + 7, frame.minY + 7, frame.width - 14, frame.height - 14)
        let overlay: CGRect = CGRectMake(frame.minX + 7, frame.minY + 7, frame.width - 14, frame.height - 14)


        //// Group
        //// Oval Drawing
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(group.minX + floor(group.width * 0.00000 + 0.5), group.minY + floor(group.height * 0.00000 + 0.5), floor(group.width * 1.00000 + 0.5) - floor(group.width * 0.00000 + 0.5), floor(group.height * 1.00000 + 0.5) - floor(group.height * 0.00000 + 0.5)))
        duckYellow.setStroke()
        ovalPath.lineWidth = 6
        ovalPath.stroke()


        //// Bezier 2 Drawing
        var bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPointMake(group.minX + 0.50336 * group.width, group.minY + 0.48947 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.60712 * group.width, group.minY + 0.33384 * group.height), controlPoint1: CGPointMake(group.minX + 0.53986 * group.width, group.minY + 0.46597 * group.height), controlPoint2: CGPointMake(group.minX + 0.60457 * group.width, group.minY + 0.42871 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.42567 * group.width, group.minY + 0.14605 * group.height), controlPoint1: CGPointMake(group.minX + 0.60909 * group.width, group.minY + 0.25900 * group.height), controlPoint2: CGPointMake(group.minX + 0.57029 * group.width, group.minY + 0.15112 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.24683 * group.width, group.minY + 0.28621 * group.height), controlPoint1: CGPointMake(group.minX + 0.30948 * group.width, group.minY + 0.14197 * group.height), controlPoint2: CGPointMake(group.minX + 0.26097 * group.width, group.minY + 0.21797 * group.height))
        bezier2Path.addLineToPoint(CGPointMake(group.minX + 0.24341 * group.width, group.minY + 0.28574 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.22371 * group.width, group.minY + 0.29641 * group.height), controlPoint1: CGPointMake(group.minX + 0.23628 * group.width, group.minY + 0.28574 * group.height), controlPoint2: CGPointMake(group.minX + 0.23072 * group.width, group.minY + 0.29047 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.19494 * group.width, group.minY + 0.31231 * group.height), controlPoint1: CGPointMake(group.minX + 0.21600 * group.width, group.minY + 0.30298 * group.height), controlPoint2: CGPointMake(group.minX + 0.20641 * group.width, group.minY + 0.31110 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.15176 * group.width, group.minY + 0.30327 * group.height), controlPoint1: CGPointMake(group.minX + 0.18175 * group.width, group.minY + 0.31365 * group.height), controlPoint2: CGPointMake(group.minX + 0.16500 * group.width, group.minY + 0.30785 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.12125 * group.width, group.minY + 0.30046 * group.height), controlPoint1: CGPointMake(group.minX + 0.13629 * group.width, group.minY + 0.29800 * group.height), controlPoint2: CGPointMake(group.minX + 0.12731 * group.width, group.minY + 0.29571 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.11377 * group.width, group.minY + 0.32344 * group.height), controlPoint1: CGPointMake(group.minX + 0.11572 * group.width, group.minY + 0.30475 * group.height), controlPoint2: CGPointMake(group.minX + 0.11322 * group.width, group.minY + 0.31252 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.17288 * group.width, group.minY + 0.41860 * group.height), controlPoint1: CGPointMake(group.minX + 0.11499 * group.width, group.minY + 0.34680 * group.height), controlPoint2: CGPointMake(group.minX + 0.13212 * group.width, group.minY + 0.39327 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.24921 * group.width, group.minY + 0.43882 * group.height), controlPoint1: CGPointMake(group.minX + 0.20119 * group.width, group.minY + 0.43619 * group.height), controlPoint2: CGPointMake(group.minX + 0.23286 * group.width, group.minY + 0.43882 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.24924 * group.width, group.minY + 0.43882 * group.height), controlPoint1: CGPointMake(group.minX + 0.24924 * group.width, group.minY + 0.43882 * group.height), controlPoint2: CGPointMake(group.minX + 0.24924 * group.width, group.minY + 0.43882 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.27650 * group.width, group.minY + 0.43616 * group.height), controlPoint1: CGPointMake(group.minX + 0.25799 * group.width, group.minY + 0.43882 * group.height), controlPoint2: CGPointMake(group.minX + 0.26749 * group.width, group.minY + 0.43795 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.29879 * group.width, group.minY + 0.47215 * group.height), controlPoint1: CGPointMake(group.minX + 0.28662 * group.width, group.minY + 0.45172 * group.height), controlPoint2: CGPointMake(group.minX + 0.29580 * group.width, group.minY + 0.46374 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.19601 * group.width, group.minY + 0.67518 * group.height), controlPoint1: CGPointMake(group.minX + 0.30638 * group.width, group.minY + 0.49373 * group.height), controlPoint2: CGPointMake(group.minX + 0.19601 * group.width, group.minY + 0.56475 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.40539 * group.width, group.minY + 0.85411 * group.height), controlPoint1: CGPointMake(group.minX + 0.19601 * group.width, group.minY + 0.78561 * group.height), controlPoint2: CGPointMake(group.minX + 0.27726 * group.width, group.minY + 0.85411 * group.height))
        bezier2Path.addLineToPoint(CGPointMake(group.minX + 0.60839 * group.width, group.minY + 0.85411 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.88630 * group.width, group.minY + 0.51277 * group.height), controlPoint1: CGPointMake(group.minX + 0.72131 * group.width, group.minY + 0.85411 * group.height), controlPoint2: CGPointMake(group.minX + 0.86978 * group.width, group.minY + 0.74371 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.50336 * group.width, group.minY + 0.48947 * group.height), controlPoint1: CGPointMake(group.minX + 0.78097 * group.width, group.minY + 0.60161 * group.height), controlPoint2: CGPointMake(group.minX + 0.73021 * group.width, group.minY + 0.47597 * group.height))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(CGPointMake(group.minX + 0.18361 * group.width, group.minY + 0.40139 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.13325 * group.width, group.minY + 0.31863 * group.height), controlPoint1: CGPointMake(group.minX + 0.14608 * group.width, group.minY + 0.37803 * group.height), controlPoint2: CGPointMake(group.minX + 0.13212 * group.width, group.minY + 0.33118 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.14515 * group.width, group.minY + 0.32249 * group.height), controlPoint1: CGPointMake(group.minX + 0.13655 * group.width, group.minY + 0.31953 * group.height), controlPoint2: CGPointMake(group.minX + 0.14133 * group.width, group.minY + 0.32118 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.19708 * group.width, group.minY + 0.33248 * group.height), controlPoint1: CGPointMake(group.minX + 0.16031 * group.width, group.minY + 0.32770 * group.height), controlPoint2: CGPointMake(group.minX + 0.17990 * group.width, group.minY + 0.33439 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.23686 * group.width, group.minY + 0.31191 * group.height), controlPoint1: CGPointMake(group.minX + 0.21478 * group.width, group.minY + 0.33063 * group.height), controlPoint2: CGPointMake(group.minX + 0.22753 * group.width, group.minY + 0.31979 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.24376 * group.width, group.minY + 0.30640 * group.height), controlPoint1: CGPointMake(group.minX + 0.23909 * group.width, group.minY + 0.31003 * group.height), controlPoint2: CGPointMake(group.minX + 0.24199 * group.width, group.minY + 0.30756 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.24811 * group.width, group.minY + 0.31799 * group.height), controlPoint1: CGPointMake(group.minX + 0.24698 * group.width, group.minY + 0.30756 * group.height), controlPoint2: CGPointMake(group.minX + 0.24732 * group.width, group.minY + 0.30895 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.25683 * group.width, group.minY + 0.35123 * group.height), controlPoint1: CGPointMake(group.minX + 0.24883 * group.width, group.minY + 0.32634 * group.height), controlPoint2: CGPointMake(group.minX + 0.24984 * group.width, group.minY + 0.33781 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.27766 * group.width, group.minY + 0.38276 * group.height), controlPoint1: CGPointMake(group.minX + 0.26213 * group.width, group.minY + 0.36143 * group.height), controlPoint2: CGPointMake(group.minX + 0.27004 * group.width, group.minY + 0.37230 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.29441 * group.width, group.minY + 0.40640 * group.height), controlPoint1: CGPointMake(group.minX + 0.28395 * group.width, group.minY + 0.39139 * group.height), controlPoint2: CGPointMake(group.minX + 0.29345 * group.width, group.minY + 0.40443 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.24927 * group.width, group.minY + 0.41851 * group.height), controlPoint1: CGPointMake(group.minX + 0.29276 * group.width, group.minY + 0.41078 * group.height), controlPoint2: CGPointMake(group.minX + 0.27630 * group.width, group.minY + 0.41851 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.18361 * group.width, group.minY + 0.40139 * group.height), controlPoint1: CGPointMake(group.minX + 0.22507 * group.width, group.minY + 0.41854 * group.height), controlPoint2: CGPointMake(group.minX + 0.20114 * group.width, group.minY + 0.41231 * group.height))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(CGPointMake(group.minX + 0.32356 * group.width, group.minY + 0.29591 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.35653 * group.width, group.minY + 0.26291 * group.height), controlPoint1: CGPointMake(group.minX + 0.32356 * group.width, group.minY + 0.27769 * group.height), controlPoint2: CGPointMake(group.minX + 0.33834 * group.width, group.minY + 0.26291 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.38954 * group.width, group.minY + 0.29591 * group.height), controlPoint1: CGPointMake(group.minX + 0.37476 * group.width, group.minY + 0.26291 * group.height), controlPoint2: CGPointMake(group.minX + 0.38954 * group.width, group.minY + 0.27769 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.35653 * group.width, group.minY + 0.32892 * group.height), controlPoint1: CGPointMake(group.minX + 0.38954 * group.width, group.minY + 0.31411 * group.height), controlPoint2: CGPointMake(group.minX + 0.37476 * group.width, group.minY + 0.32892 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.32356 * group.width, group.minY + 0.29591 * group.height), controlPoint1: CGPointMake(group.minX + 0.33831 * group.width, group.minY + 0.32892 * group.height), controlPoint2: CGPointMake(group.minX + 0.32356 * group.width, group.minY + 0.31411 * group.height))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(CGPointMake(group.minX + 0.66423 * group.width, group.minY + 0.68726 * group.height))
        bezier2Path.addLineToPoint(CGPointMake(group.minX + 0.58808 * group.width, group.minY + 0.72850 * group.height))
        bezier2Path.addLineToPoint(CGPointMake(group.minX + 0.63757 * group.width, group.minY + 0.76280 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.37111 * group.width, group.minY + 0.73739 * group.height), controlPoint1: CGPointMake(group.minX + 0.63757 * group.width, group.minY + 0.76280 * group.height), controlPoint2: CGPointMake(group.minX + 0.45357 * group.width, group.minY + 0.82116 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.38632 * group.width, group.minY + 0.59402 * group.height), controlPoint1: CGPointMake(group.minX + 0.33048 * group.width, group.minY + 0.69619 * group.height), controlPoint2: CGPointMake(group.minX + 0.32289 * group.width, group.minY + 0.63206 * group.height))
        bezier2Path.addCurveToPoint(CGPointMake(group.minX + 0.69862 * group.width, group.minY + 0.60856 * group.height), controlPoint1: CGPointMake(group.minX + 0.44975 * group.width, group.minY + 0.55597 * group.height), controlPoint2: CGPointMake(group.minX + 0.69862 * group.width, group.minY + 0.60856 * group.height))
        bezier2Path.addLineToPoint(CGPointMake(group.minX + 0.60938 * group.width, group.minY + 0.65921 * group.height))
        bezier2Path.addLineToPoint(CGPointMake(group.minX + 0.66423 * group.width, group.minY + 0.68726 * group.height))
        bezier2Path.closePath()
        bezier2Path.miterLimit = 4;

        duckYellow.setFill()
        bezier2Path.fill()




        if (highlighted) {
            //// Overlay
            //// Oval 2 Drawing
            var oval2Path = UIBezierPath(ovalInRect: CGRectMake(overlay.minX + floor(overlay.width * 0.00000 + 0.5), overlay.minY + floor(overlay.height * 0.00000 + 0.5), floor(overlay.width * 1.00000 + 0.5) - floor(overlay.width * 0.00000 + 0.5), floor(overlay.height * 1.00000 + 0.5) - floor(overlay.height * 0.00000 + 0.5)))
            UIColor.blackColor().setStroke()
            oval2Path.lineWidth = 8
            oval2Path.stroke()


            //// Bezier Drawing
            var bezierPath = UIBezierPath()
            bezierPath.moveToPoint(CGPointMake(overlay.minX + 0.50336 * overlay.width, overlay.minY + 0.48947 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.60712 * overlay.width, overlay.minY + 0.33384 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.53986 * overlay.width, overlay.minY + 0.46597 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.60457 * overlay.width, overlay.minY + 0.42871 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.42567 * overlay.width, overlay.minY + 0.14605 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.60909 * overlay.width, overlay.minY + 0.25900 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.57029 * overlay.width, overlay.minY + 0.15112 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.24683 * overlay.width, overlay.minY + 0.28621 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.30948 * overlay.width, overlay.minY + 0.14197 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.26097 * overlay.width, overlay.minY + 0.21797 * overlay.height))
            bezierPath.addLineToPoint(CGPointMake(overlay.minX + 0.24341 * overlay.width, overlay.minY + 0.28574 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.22371 * overlay.width, overlay.minY + 0.29641 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.23628 * overlay.width, overlay.minY + 0.28574 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.23072 * overlay.width, overlay.minY + 0.29047 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.19494 * overlay.width, overlay.minY + 0.31231 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.21600 * overlay.width, overlay.minY + 0.30298 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.20641 * overlay.width, overlay.minY + 0.31110 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.15176 * overlay.width, overlay.minY + 0.30327 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.18175 * overlay.width, overlay.minY + 0.31365 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.16500 * overlay.width, overlay.minY + 0.30785 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.12125 * overlay.width, overlay.minY + 0.30046 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.13629 * overlay.width, overlay.minY + 0.29800 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.12731 * overlay.width, overlay.minY + 0.29571 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.11377 * overlay.width, overlay.minY + 0.32344 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.11572 * overlay.width, overlay.minY + 0.30475 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.11322 * overlay.width, overlay.minY + 0.31252 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.17288 * overlay.width, overlay.minY + 0.41860 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.11499 * overlay.width, overlay.minY + 0.34680 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.13212 * overlay.width, overlay.minY + 0.39327 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.24921 * overlay.width, overlay.minY + 0.43882 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.20119 * overlay.width, overlay.minY + 0.43619 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.23286 * overlay.width, overlay.minY + 0.43882 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.24924 * overlay.width, overlay.minY + 0.43882 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.24924 * overlay.width, overlay.minY + 0.43882 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.24924 * overlay.width, overlay.minY + 0.43882 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.27650 * overlay.width, overlay.minY + 0.43616 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.25799 * overlay.width, overlay.minY + 0.43882 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.26749 * overlay.width, overlay.minY + 0.43795 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.29879 * overlay.width, overlay.minY + 0.47215 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.28662 * overlay.width, overlay.minY + 0.45172 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.29580 * overlay.width, overlay.minY + 0.46374 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.19601 * overlay.width, overlay.minY + 0.67518 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.30638 * overlay.width, overlay.minY + 0.49373 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.19601 * overlay.width, overlay.minY + 0.56475 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.40539 * overlay.width, overlay.minY + 0.85411 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.19601 * overlay.width, overlay.minY + 0.78561 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.27726 * overlay.width, overlay.minY + 0.85411 * overlay.height))
            bezierPath.addLineToPoint(CGPointMake(overlay.minX + 0.60839 * overlay.width, overlay.minY + 0.85411 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.88630 * overlay.width, overlay.minY + 0.51277 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.72131 * overlay.width, overlay.minY + 0.85411 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.86978 * overlay.width, overlay.minY + 0.74371 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.50336 * overlay.width, overlay.minY + 0.48947 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.78097 * overlay.width, overlay.minY + 0.60161 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.73021 * overlay.width, overlay.minY + 0.47597 * overlay.height))
            bezierPath.closePath()
            bezierPath.moveToPoint(CGPointMake(overlay.minX + 0.18361 * overlay.width, overlay.minY + 0.40139 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.13325 * overlay.width, overlay.minY + 0.31863 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.14608 * overlay.width, overlay.minY + 0.37803 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.13212 * overlay.width, overlay.minY + 0.33118 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.14515 * overlay.width, overlay.minY + 0.32249 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.13655 * overlay.width, overlay.minY + 0.31953 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.14133 * overlay.width, overlay.minY + 0.32118 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.19708 * overlay.width, overlay.minY + 0.33248 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.16031 * overlay.width, overlay.minY + 0.32770 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.17990 * overlay.width, overlay.minY + 0.33439 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.23686 * overlay.width, overlay.minY + 0.31191 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.21478 * overlay.width, overlay.minY + 0.33063 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.22753 * overlay.width, overlay.minY + 0.31979 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.24376 * overlay.width, overlay.minY + 0.30640 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.23909 * overlay.width, overlay.minY + 0.31003 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.24199 * overlay.width, overlay.minY + 0.30756 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.24811 * overlay.width, overlay.minY + 0.31799 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.24698 * overlay.width, overlay.minY + 0.30756 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.24732 * overlay.width, overlay.minY + 0.30895 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.25683 * overlay.width, overlay.minY + 0.35123 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.24883 * overlay.width, overlay.minY + 0.32634 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.24984 * overlay.width, overlay.minY + 0.33781 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.27766 * overlay.width, overlay.minY + 0.38276 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.26213 * overlay.width, overlay.minY + 0.36143 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.27004 * overlay.width, overlay.minY + 0.37230 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.29441 * overlay.width, overlay.minY + 0.40640 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.28395 * overlay.width, overlay.minY + 0.39139 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.29345 * overlay.width, overlay.minY + 0.40443 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.24927 * overlay.width, overlay.minY + 0.41851 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.29276 * overlay.width, overlay.minY + 0.41078 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.27630 * overlay.width, overlay.minY + 0.41851 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.18361 * overlay.width, overlay.minY + 0.40139 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.22507 * overlay.width, overlay.minY + 0.41854 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.20114 * overlay.width, overlay.minY + 0.41231 * overlay.height))
            bezierPath.closePath()
            bezierPath.moveToPoint(CGPointMake(overlay.minX + 0.32356 * overlay.width, overlay.minY + 0.29591 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.35653 * overlay.width, overlay.minY + 0.26291 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.32356 * overlay.width, overlay.minY + 0.27769 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.33834 * overlay.width, overlay.minY + 0.26291 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.38954 * overlay.width, overlay.minY + 0.29591 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.37476 * overlay.width, overlay.minY + 0.26291 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.38954 * overlay.width, overlay.minY + 0.27769 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.35653 * overlay.width, overlay.minY + 0.32892 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.38954 * overlay.width, overlay.minY + 0.31411 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.37476 * overlay.width, overlay.minY + 0.32892 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.32356 * overlay.width, overlay.minY + 0.29591 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.33831 * overlay.width, overlay.minY + 0.32892 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.32356 * overlay.width, overlay.minY + 0.31411 * overlay.height))
            bezierPath.closePath()
            bezierPath.moveToPoint(CGPointMake(overlay.minX + 0.66423 * overlay.width, overlay.minY + 0.68726 * overlay.height))
            bezierPath.addLineToPoint(CGPointMake(overlay.minX + 0.58808 * overlay.width, overlay.minY + 0.72850 * overlay.height))
            bezierPath.addLineToPoint(CGPointMake(overlay.minX + 0.63757 * overlay.width, overlay.minY + 0.76280 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.37111 * overlay.width, overlay.minY + 0.73739 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.63757 * overlay.width, overlay.minY + 0.76280 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.45357 * overlay.width, overlay.minY + 0.82116 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.38632 * overlay.width, overlay.minY + 0.59402 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.33048 * overlay.width, overlay.minY + 0.69619 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.32289 * overlay.width, overlay.minY + 0.63206 * overlay.height))
            bezierPath.addCurveToPoint(CGPointMake(overlay.minX + 0.69862 * overlay.width, overlay.minY + 0.60856 * overlay.height), controlPoint1: CGPointMake(overlay.minX + 0.44975 * overlay.width, overlay.minY + 0.55597 * overlay.height), controlPoint2: CGPointMake(overlay.minX + 0.69862 * overlay.width, overlay.minY + 0.60856 * overlay.height))
            bezierPath.addLineToPoint(CGPointMake(overlay.minX + 0.60938 * overlay.width, overlay.minY + 0.65921 * overlay.height))
            bezierPath.addLineToPoint(CGPointMake(overlay.minX + 0.66423 * overlay.width, overlay.minY + 0.68726 * overlay.height))
            bezierPath.closePath()
            bezierPath.miterLimit = 4;

            UIColor.blackColor().setFill()
            bezierPath.fill()


        }
    }

}

@objc protocol StyleKitSettableImage {
    var image: UIImage! { get set }
}

@objc protocol StyleKitSettableSelectedImage {
    var selectedImage: UIImage! { get set }
}
