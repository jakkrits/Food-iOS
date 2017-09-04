//
//  CategoryViewController.swift
//  Food
//
//  Created by My App Templates Team on 07/09/14.
//  Copyright (c) 2014 MyAppTemplates. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet var tblCategories : UITableView!
    var categories = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblCategories.layer.cornerRadius = 5.0
        tblCategories.layer.borderWidth = 1
        tblCategories.layer.borderColor = UIColor(red: (212.0/255.0), green: (162.0/255.0), blue: (112.0/255.0), alpha: 1).CGColor
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "topbar-logo.png"))
        self.addCategory("Appetizer", iconImg: "icon-appetizer", totalCount: "12")
        self.addCategory("Beverages", iconImg: "icon-beverages", totalCount: "35")
        self.addCategory("Breakfasts", iconImg: "icon-breakfasts", totalCount: "72")
        self.addCategory("Deserts", iconImg: "icon-deserts", totalCount: "16")
        self.addCategory("Main-dishes", iconImg: "icon-main-dishes", totalCount: "25")
        self.addCategory("Side-dishes", iconImg: "icon-side-dishes", totalCount: "94")
         // Do any additional setup after loading the view.
    }
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    func addCategory(title: String, iconImg iconImage:String, totalCount tCount:String) {
        categories.addObject(["title":title, "image":iconImage,  "count":tCount])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = tblCategories.dequeueReusableCellWithIdentifier("CategoryCell") as! CategoryTableViewCell
        var categoryDic = categories.objectAtIndex(indexPath.row) as! [String : String];
        var catTitle = categoryDic["title"] as String!
        var catImage = categoryDic["image"] as String!
        var catCount = categoryDic["count"] as String!
        
        cell.imgIcon.image = UIImage(named: catImage as String)
        cell.categoryTitle.text = catTitle
        cell.totalNumber.text = catCount
        return cell
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier != "seachFromCat" {
            var cell = sender as! CategoryTableViewCell
            var destinationVC = segue.destinationViewController as! FoodListViewController
            destinationVC.navTitle = cell.categoryTitle.text
        }
    }
    
}
