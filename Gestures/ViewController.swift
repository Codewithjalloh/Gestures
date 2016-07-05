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
        let rotation:CGFloat = sender.rotation
        let transform:CGAffineTransform = CGAffineTransformMakeRotation(rotation + netRotation)
        sender.view?.transform = transform
        if (sender.state == UIGestureRecognizerState.Ended) {
            netRotation += rotation
        }
        
    }
    
    @IBAction func respondToSwipeGest(send: UIGestureRecognizer) {
        if let swipeGest = send as? UISwipeGestureRecognizer {
            switch swipeGest.direction {
            case UISwipeGestureRecognizerDirection.Right:
                changeTheImage()
                print("swipe right")
            
            case UISwipeGestureRecognizerDirection.Left:
                changeTheImage()
                print("swipe left")
            
            case UISwipeGestureRecognizerDirection.Down:
                changeTheImage()
                print("swipe down")
            
            case UISwipeGestureRecognizerDirection.Up:
                changeTheImage()
                print("swipe up")
        
            default:
                break
            }
        }
        
    }
    
    @IBAction func longPressGesture(gestRec: UIGestureRecognizer) {
        if (gestRec.state == .Began) {
            let alertController = UIAlertController(title: "Alert", message: "Long Press gesture", preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in }
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }
        
    }
    
    func changeTheImage() {
        if (theImage.image == UIImage(named: "sun_tzu_general.jpg")) {
            theImage.image = UIImage(named: "clausewitz.jpg")
        } else {
            theImage.image = UIImage(named: "sun_tzu_general.jpg")
        }
    }
}

