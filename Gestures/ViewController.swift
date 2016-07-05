//
//  ViewController.swift
//  Gestures
//
//  Created by wealthyjalloh on 06/07/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theImage: UIImageView!
    
    var netRotation:CGFloat = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // SWIPE
        let swipeGestRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGest:")
        theImage.addGestureRecognizer(swipeGestRight)
        
        let swipeGestDown = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGest:")
        theImage.addGestureRecognizer(swipeGestDown)
        
        let swipeGestUp = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGest:")
        theImage.addGestureRecognizer(swipeGestUp)
        
        let swipeGestLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGest:")
        theImage.addGestureRecognizer(swipeGestLeft)
        
        //ROTATION
        let rotateGest = UISwipeGestureRecognizer(target: self, action: "rotateGesture:")
        theImage.addGestureRecognizer(rotateGest)
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

