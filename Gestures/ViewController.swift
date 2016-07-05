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
        let rotateGest = UIRotationGestureRecognizer(target: self, action: "rotateGesture:")
        theImage.addGestureRecognizer(rotateGest)
        
        //LONG PRESS
        let longPressGes = UILongPressGestureRecognizer(target: self, action: "longPressGesture:")
        longPressGes.minimumPressDuration = 2.0
        theImage.addGestureRecognizer(longPressGes)
        theImage.image = UIImage(named: "sun_tzu_general.jpg")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func rotateGesture(sender: UIRotationGestureRecognizer) {
        
    }
    
    @IBAction func respondToSwipeGest(send: UIGestureRecognizer) {
        
    }
    
    @IBAction func longPressGesture(gestRec: UIGestureRecognizer) {
        
    }
    
    func changeTheImage() {
        if (theImage.image == UIImage(named: "sun_tzu_general.jpg")) {
            theImage.image = UIImage(named: "clausewitz.jpg")
        } else {
            theImage.image = UIImage(named: "sun_tzu_general.jpg")
        }
    }
}

