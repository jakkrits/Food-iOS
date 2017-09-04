//
//  FoodListViewController.swift
//  Food
//
//  Created by My App Templates Team on 07/09/14.
//  Copyright (c) 2014 MyAppTemplates. All rights reserved.
//

import UIKit

class FoodListViewController: UIViewController {

    var navTitle : String?
    
    @IBOutlet var tblFoodList : UITableView!
    var foodList = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblFoodList.layer.cornerRadius = 5.0
        tblFoodList.layer.borderWidth = 1
        //tblFoodList.layer.borderColor = UIColor(red: (212.0/255.0), green: (162.0/255.0), blue: (112.0/255.0), alpha: 1).CGColor
        if ((navTitle) != nil) {
            self.title = navTitle
        }
        tblFoodList.layer.borderColor = UIColor.lightGrayColor().CGColor
        self.addFood("Mandarin Sobert", iconImg: "dessert-left-img1", subTitle: "by John Doe")
        self.addFood("Blackberry Sorbet", iconImg: "dessert-left-img2", subTitle: "by Stanislav Kinlov")
        self.addFood("Mango Sorbet", iconImg: "dessert-left-img3", subTitle: "by Scarlet Johanson")
        self.addFood("Mandarin Sobert", iconImg: "dessert-left-img4", subTitle: "by John Doe")
        self.addFood("Blackberry Sorbet", iconImg: "dessert-left-img5", subTitle: "by Stanislav Kinlov")
        self.addFood("Mango Sorbet", iconImg: "dessert-left-img6", subTitle: "by Scarlet Johanson")
        // Do any additional setup after loading the view.
    }
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    func addFood(title: String, iconImg iconImage:String, subTitle subTit:String) {
        foodList.addObject(["title":title, "image":iconImage,  "subTitle":subTit])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return foodList.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = tblFoodList.dequeueReusableCellWithIdentifier("FoodListCell") as! FoodListTableViewCell
        var foodDic = foodList.objectAtIndex(indexPath.row) as! [String : String];
        var foodTitle = foodDic["title"] as String!
        var foodImage = foodDic["image"] as String!
        var foodSubTitle = foodDic["subTitle"] as String!
        
        cell.imgIcon.image = UIImage(named: foodImage as String)
        cell.foodTitle.text = foodTitle
        cell.foodSubTitle.text = foodSubTitle
        return cell
    }
    
    @IBAction func cancelBtnTapped (sender : AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
