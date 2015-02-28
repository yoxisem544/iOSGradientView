//
//  ViewController.swift
//  brimoTableViewForGradient
//
//  Created by David on 2015/2/24.
//  Copyright (c) 2015年 David. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var list = NSMutableArray()
    var picture = ["back.png", "2.png", "4.png", "3.png"]
    var cardHeight = 280 as CGFloat
    
    @IBOutlet var tableview: UITableView!
    
    @IBOutlet var footerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        list = NSMutableArray()
        list.addObject(["hey","yo"])
        list.addObject(["hello","yo"])
        list.addObject(["yo","hello"])
        list.addObject(["yoyoyoyoyoyoyoyoyoyoyoyo","yoyoyohello"])
        println("view did load")
        println(list.count)
        
        // register custom cell
        var nib = UINib(nibName: "BrimoCustomTableViewCell", bundle: nil)
        self.tableview.registerNib(nib, forCellReuseIdentifier: "BrimoCell")
               
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        self.tableview.tableFooterView = UIView(frame: CGRectZero)
        self.tableview.tableHeaderView = UIView(frame: CGRectZero)
        
        self.tableview.separatorStyle = UITableViewCellSeparatorStyle.None
        
        self.tableview.contentInset = UIEdgeInsetsMake(0, 0, -1, 0);
//        self.tableview.separatorColor = UIColor.redColor()
        
        //get screen width
        
        // footer
//        self.footerImage.image = UIImage(named: "4.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return list.count * 4
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println("enter init")
        println(self.list[indexPath.row % 4][0])
        let indicator = "BrimoCell"
        
        var cell: BrimoTableViewCell = self.tableview.dequeueReusableCellWithIdentifier("BrimoCell") as BrimoTableViewCell
        
        // avoid multi layer
        if cell.helloImage.layer.sublayers == nil {
            cell.helloImage.layer.addSublayer(self.shahowAsInverse())
        }

        cell.helloImage.image = UIImage(named: picture[Int(arc4random() % 4)])

        // separator
        var separator = UIView(frame: CGRectMake(0, cardHeight-0.3, self.view.frame.size.width, 0.5))
        separator.backgroundColor = UIColor.redColor()
        cell.contentView.addSubview(separator)

        
        // profile image
        cell.profileImage.image = UIImage(named: "profilephoto.png")
        
        cell.UserName.text = "Brimo"
        cell.postDate.text = "Otc 9, 2014"
        
        cell.categoryImage.image = UIImage(named: "category.png")
        cell.locationPinImage.image = UIImage(named: "mark.png")
        cell.shareInfo.text = "H&M promotional 20% - 60%"
        cell.locationInfo.text = "New York, NY, United States"
        
//        cell.separatorLine.backgroundColor = UIColor.redColor()
        
        println(self.view.frame.size.width)
        println(cell.frame.size.height)
        return cell
    }
    
    func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 1.0
    }
    
    func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        if section != 15 {
            view.tintColor = UIColor.redColor()
        } else {
            view.tintColor = UIColor.clearColor()
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return cardHeight
    }

    func shahowAsInverse() -> CAGradientLayer {
        var newshadow = CAGradientLayer()
        
        var shadowFrame = CGRectMake(0, 0, self.view.frame.size.width, cardHeight)
        newshadow.frame = shadowFrame
        
        var deep = UIColor(white: 0.0, alpha: 0.7).CGColor
        var light = UIColor(white: 1.0, alpha: 0.1).CGColor
        newshadow.colors = [deep, light, light, deep]
//        newshadow.locations = [0.1, 0.15, 1.0]
        
        return newshadow
    }

}

