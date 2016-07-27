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
        testBtn.frame = CGRect(x: 100, y: 100, width: 30, height: 20);
        testBtn.setTitle("xxxx", for: UIControlState())
        
        testBtn.backgroundColor = UIColor.red()
        testBtn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        testBtn.setTitleColor(UIColor.black(), for: UIControlState())
        testBtn.sizeToFit()
        testBtn.addTarget(self, action: #selector(self.testBtnClcik(_:)), for: .touchUpInside)
        self.view.addSubview(testBtn)
        
     
        testLabel.frame = CGRect(x: testBtn.frame.origin.x, y: testBtn.frame.origin.y + 30, width: 20, height: 20)
        testLabel.text = "wwwww";
        testLabel.font = UIFont.systemFont(ofSize: 14)
        testLabel.textColor = UIColor.red()
        testLabel.sizeToFit()
        self.view.addSubview(testLabel)
        
        let image1  = UIImage.init(named: "icon_rank_no1")!
        
        testImageView.frame = CGRect(x: testLabel.frame.origin.x, y: testLabel.frame.origin.y + 20 + 10, width: image1.size.width, height: image1.size.height)
        testImageView.image = image1
        self.view.addSubview(testImageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func testBtnClcik(_ sender : UIButton) -> Void {
        print("xxxxx")
        let testVC : testTableViewController = testTableViewController()
        
        self.navigationController?.pushViewController(testVC, animated: true)
        
        self
        
        
    }

}

