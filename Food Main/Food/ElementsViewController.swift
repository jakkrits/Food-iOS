//
//  ElementsViewController.swift
//  Food
//
//  Created by My App Templates Team on 07/09/14.
//  Copyright (c) 2014 MyAppTemplates. All rights reserved.
//

import UIKit

class ElementsViewController: UIViewController {

    @IBOutlet var progressOne : UIImageView!
    @IBOutlet var progressTwo : UIImageView!
    @IBOutlet var progressThree : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createRotationForView(progressOne, duration: 0.5)
        self.createRotationForView(progressTwo, duration: 0.5)
        self.createRotationForView(progressThree, duration: 0.5)
        // Do any additional setup after loading the view.
    }
    
    func createRotationForView (view : UIView, duration dura:Double ) {

        var rotationAnimation : CABasicAnimation
        rotationAnimation = CABasicAnimation(keyPath:"transform.rotation.z")
        rotationAnimation.toValue =  M_PI * 2.0 * 1 * 1
        rotationAnimation.duration = dura;
        rotationAnimation.cumulative = true;
        rotationAnimation.repeatCount = 1000;
        view.layer.addAnimation(rotationAnimation, forKey: "rotationAnimation")
    }
    
    @IBAction func btnSelected (sender : UIButton) {
        sender.selected = !sender.selected
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
