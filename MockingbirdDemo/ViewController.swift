//
//  ViewController.swift
//  Mockingbird
//
//  Created by xiangwenwen on 15/6/15.
//  Copyright (c) 2015年 xiangwenwen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scancode: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "mockingbird:", name:MOKNotifiScanResult, object: nil)
        
    }
    
   func mockingbird(note:NSNotification)->Void{
        if let userInfo:Dictionary<NSObject,AnyObject> = note.userInfo{
            self.scancode.text = userInfo["value"] as? String
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func scancodeinfo(sender: UIButton) {
        let storyboard:UIStoryboard = UIStoryboard(name: "Mockingbird", bundle: NSBundle.mainBundle())
        let navC:UINavigationController = storyboard.instantiateViewControllerWithIdentifier("MockingbirdNavigationID") as! UINavigationController
        let mockingbird:MockingbirdScanCodeManager = navC.topViewController as! MockingbirdScanCodeManager
        mockingbird.globalTitle = "扫描条码"
        mockingbird.globalColor = MOKTeal
        self.presentViewController(navC, animated: true, completion: nil)
    }
}

