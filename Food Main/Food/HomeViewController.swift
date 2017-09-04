//
//  HomeViewController.swift
//  Food
//
//  Created by My App Templates Team on 28/08/14.
//  Copyright (c) 2014 MyAppTemplates. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var scrollViewTop : UIScrollView!
    @IBOutlet var previousBtn : UIButton!
    @IBOutlet var nextBtn : UIButton!
    
    @IBOutlet var btnDesc : UIButton!
    @IBOutlet var btnIngredient : UIButton!
    @IBOutlet var btnProcess : UIButton!
    
    @IBOutlet var viewDesc :UIView!
    @IBOutlet var viewIngredient :UIView!
    @IBOutlet var viewProcess :UIView!
    
    var currentOffset : CGFloat = 0

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.tintColor = UIColor.blackColor()
        UITabBar.appearance().shadowImage = UIImage(named: "transparent.png")
        for (index, value) in (self.tabBarController?.tabBar.items as NSArray!).enumerate() {
            var item : UITabBarItem
            item = value as! UITabBarItem
            if (index == 0) {
                item.image = UIImage(named:"icon-tab-add-new.png")!.imageWithRenderingMode(.AlwaysOriginal)
            }
            if (index == 1) {
                item.image = UIImage(named:"icon-tab-recipes")!.imageWithRenderingMode(.AlwaysOriginal)
            }
            if (index == 2) {
                item.image = UIImage(named:"icon-tab-wine")!.imageWithRenderingMode(.AlwaysOriginal)
            }
            if (index == 3) {
                item.image = UIImage(named:"icon-tab-profile")!.imageWithRenderingMode(.AlwaysOriginal)
            }
            
        }
         self.performSegueWithIdentifier("loginSegue", sender: nil)
        previousBtn.enabled = false;
        scrollViewTop.contentOffset = CGPointMake(scrollViewTop.frame.size.width * 3, scrollViewTop.frame.size.height)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnTapped (sender : UIButton){
        previousBtn.enabled = true;
        if (currentOffset < 2) {
            currentOffset++
        }
        if (currentOffset==2){
            nextBtn.enabled = false;
        }
        var newOffset : CGFloat
        newOffset = currentOffset * 288.0
        scrollViewTop.setContentOffset(CGPointMake(newOffset, 0), animated:true);
    }
    
    @IBAction func previousBtnTapped (sender : UIButton){
        nextBtn.enabled = true;
        if (currentOffset > 0) {
            currentOffset--
        }
        if (currentOffset == 0) {
            previousBtn.enabled = false;
        }
        var newOffset : CGFloat
        newOffset = currentOffset * 288.0
        scrollViewTop.setContentOffset(CGPointMake(newOffset, 0), animated:true);
    }
    
    @IBAction func descBtnTapped (sender : UIButton){
        btnDesc.selected = true
        btnIngredient.selected = false
        btnProcess.selected = false
        
        viewDesc.hidden = false
        viewIngredient.hidden = true
        viewProcess.hidden = true
    }
    
    @IBAction func ingredientBtnTapped (sender : UIButton){
        btnDesc.selected = false
        btnIngredient.selected = true
        btnProcess.selected = false
        
        viewDesc.hidden = true
        viewIngredient.hidden = false
        viewProcess.hidden = true
    }
    
    @IBAction func processBtnTapped (sender : UIButton){
        btnDesc.selected = false
        btnIngredient.selected = false
        btnProcess.selected = true
        
        viewDesc.hidden = true
        viewIngredient.hidden = true
        viewProcess.hidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
