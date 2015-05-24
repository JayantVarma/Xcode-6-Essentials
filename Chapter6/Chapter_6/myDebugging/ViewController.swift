//
//  ViewController.swift
//  myDebugging
//
//  Created by Jayant Varma.
//  Copyright (c) 2015 OZ Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSTimer.scheduledTimerWithTimeInterval(0.5,
                                      target: self,
                                    selector: "runme:",
                                    userInfo: nil,
                                     repeats: true)
    }

    func runme(timer:NSTimer){
        counter++
        if counter <= 10 {
            println("timer fired \(counter)")
        } else {
            timer.invalidate()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func debugQuickLookObject() -> AnyObject {
        
        //TEXT version
        //return "This is the custom preview text"
        
        //IMAGE version
        let theView = self.view
        UIGraphicsBeginImageContextWithOptions(theView.bounds.size, false, 0)
        if !theView.drawViewHierarchyInRect(theView.bounds, afterScreenUpdates: true){
            theView.layer.renderInContext(UIGraphicsGetCurrentContext())
        }
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    

}

