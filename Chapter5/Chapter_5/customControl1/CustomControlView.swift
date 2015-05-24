//
//  CustomControlView.swift
//  customControl1
//
//  Created by Jayant Varma.
//  Copyright (c) 2015 OZ Apps. All rights reserved.
//

import UIKit

@IBDesignable class CustomControlView: UIView {

    @IBInspectable var backColor:UIColor = UIColor.redColor()
    @IBInspectable var foreColor:UIColor = UIColor.whiteColor()
    @IBInspectable var width: CGFloat = 1

    private var theLayer: CAShapeLayer!
    private var txtLayer: CATextLayer!
    
    override func layoutSubviews() {

        if theLayer == nil {
            theLayer = CAShapeLayer()
            layer.addSublayer(theLayer)
        }

        let rect =  CGRectInset(bounds, width/2, width/2)
       
        var path = UIBezierPath(rect: rect)
        //path.moveToPoint(CGPointMake(0, 0))
        path.addLineToPoint(CGPointMake(rect.width, rect.height))
        
        theLayer.path = path.CGPath
        theLayer.fillColor = backColor.CGColor
        theLayer.strokeColor = foreColor.CGColor
        theLayer.lineWidth = width
        
        theLayer.frame = bounds
        
        if txtLayer == nil {
            txtLayer = CATextLayer()
            layer.addSublayer(txtLayer)
        }
        
        let size = txtLayer.bounds
        let szW = Int(size.width)
        let szH = Int(size.height)
        txtLayer.string = "\(szW) x \(szH)"
        txtLayer.foregroundColor = foreColor.CGColor
        txtLayer.backgroundColor = nil
        txtLayer.fontSize = 12
        txtLayer.position = CGPointMake(CGFloat(szW/2), CGFloat(szH) - (txtLayer.fontSize/2))
        txtLayer.alignmentMode = kCAAlignmentCenter
        txtLayer.bounds = bounds
    }
    
}
