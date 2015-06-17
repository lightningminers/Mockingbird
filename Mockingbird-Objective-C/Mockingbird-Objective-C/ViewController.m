//
//  ViewController.m
//  Mockingbird-Objective-C
//
//  Created by xiangwenwen on 15/6/17.
//  Copyright (c) 2015年 xiangwenwen. All rights reserved.
//

#import "ViewController.h"
#import "Mockingbird_Objective_C-Swift.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *showScanCodeInfo;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.showScanCodeInfo.numberOfLines = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)scanCode:(UIButton *)sender {
    UIStoryboard *stor = [UIStoryboard storyboardWithName:@"Mockingbird" bundle:[NSBundle mainBundle]];
    UINavigationController *navc =  [stor instantiateViewControllerWithIdentifier:@"MockingbirdNavigationID"];
    MockingbirdScanCodeManager *mocking = (MockingbirdScanCodeManager *)navc.topViewController;
    mocking.mockingbirdResult = ^(NSString * __nonnull value){
        self.showScanCodeInfo.text = value;
    };
    [self presentViewController:navc animated:YES completion:nil];
}

@end
