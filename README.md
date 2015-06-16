##Mockingbird

>Tag v0.0.1

![](animal-162020_640.png)

![](https://img.shields.io/jenkins/s/https/jenkins.qa.ubuntu.com/precise-desktop-amd64_default.svg)
![](https://img.shields.io/github/license/mashape/apistatus.svg)
![](https://camo.githubusercontent.com/770175f6c01d89c84a020706126a9e6399ff76c4/68747470733a2f2f696d672e736869656c64732e696f2f636f636f61706f64732f702f4b696e676669736865722e7376673f7374796c653d666c6174)

##Requirements

* iOS 7.0+
* Xcode 6.3

##Use

	let storyboard:UIStoryboard = UIStoryboard(name: "Mockingbird", bundle: NSBundle.mainBundle())
    let navC:UINavigationController = storyboard.instantiateViewControllerWithIdentifier("MockingbirdNavigationID") as! UINavigationController
    let mockingbird:MockingbirdScanCodeManager = navC.topViewController as! MockingbirdScanCodeManager
    mockingbird.globalTitle = "扫描条码"
    mockingbird.globalColor = MOKTeal
    self.presentViewController(navC, animated: true, completion: nil)

##property
    
*  globalColor:UIColor?  设置全局的颜色
*  globalTitle:String?  设置导航标题
*  previewLineColor:UIColor?  设置线动画的颜色

##Notification

	NSNotificationCenter.defaultCenter().addObserver(self, selector: "mockingbird:", name:MOKNotifiScanResult, object: nil)

scan code result | 通过通知来获取扫描的结果

##License

This code is distributed under the terms and conditions of the MIT license.


