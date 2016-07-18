//
//  ViewController.swift
//  swiftUI
//
//  Created by austinyuan on 16/7/16.
//  Copyright © 2016年 gundamyhl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var testBtn : UIButton = UIButton()
    var testLabel : UILabel = UILabel()
    var testImageView : UIImageView = UIImageView()
    
    
    
//    init()
//    {
//        super.init(nibName: nil, bundle: nil)
//        
//        
//    
//    }
//
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a     nib.
        testBtn.frame = CGRectMake(100, 20, 30, 20);
        testBtn.setTitle("xxxx", forState: UIControlState.Normal)
        
        testBtn.backgroundColor = UIColor.redColor()
        testBtn.titleLabel?.font = UIFont.systemFontOfSize(12)
        testBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        testBtn.sizeToFit()
        testBtn.addTarget(self, action: #selector(self.testBtnClcik(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(testBtn)
        
        
        
        
        
        testLabel.frame = CGRectMake(testBtn.frame.origin.x, testBtn.frame.origin.y + 30, 20, 20)
        testLabel.text = "wwwww";
        testLabel.font = UIFont.systemFontOfSize(14)
        testLabel.textColor = UIColor.redColor()
        testLabel.sizeToFit()
        self.view.addSubview(testLabel)
        
        let image1  = UIImage.init(named: "icon_rank_no1")!
        
        testImageView.frame = CGRectMake(testLabel.frame.origin.x, testLabel.frame.origin.y + 20 + 10, image1.size.width, image1.size.height)
        testImageView.image = image1
        self.view.addSubview(testImageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func testBtnClcik(sender : UIButton) -> Void {
        print("xxxxx")
    }

}

