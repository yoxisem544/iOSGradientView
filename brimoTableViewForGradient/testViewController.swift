//
//  testViewController.swift
//  brimoTableViewForGradient
//
//  Created by David on 2015/2/24.
//  Copyright (c) 2015年 David. All rights reserved.
//

import UIKit
import QuartzCore

class testViewController: UIViewController {

    @IBOutlet var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var asd = [UIColor.whiteColor(), UIColor.blackColor()]
//        self.view.layer.addSublayer(self.shahowAsInverse())
        self.imageview.layer.addSublayer(self.shahowAsInverseImage())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func shahowAsInverse() -> CAGradientLayer {
        var newshadow = CAGradientLayer()
        println(self.view.frame.size.height)
        var shadowFrame = CGRectMake(0, 0, 320, self.view.frame.size.height)
        newshadow.frame = shadowFrame
        
        newshadow.colors = [UIColor.blackColor().CGColor, UIColor.whiteColor().CGColor, UIColor.blackColor().CGColor]
        
        return newshadow
    }
    
    func shahowAsInverseImage() -> CAGradientLayer {
        var newshadow = CAGradientLayer()
        println(self.imageview.frame.size.height)
        var shadowFrame = CGRectMake(0, 0, self.imageview.frame.size.width, self.imageview.frame.size.height)
        newshadow.frame = shadowFrame
        
        newshadow.colors = [UIColor.blackColor().CGColor, UIColor.whiteColor().CGColor, UIColor.blackColor().CGColor]
        
        return newshadow
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
