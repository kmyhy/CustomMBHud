//
//  ViewController.m
//  CustomMBHud
//
//  Created by qq on 2017/7/26.
//  Copyright © 2017年 qq. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+CustomMBHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(id)sender {
    [self showMarkWithText:@"(*^◎^*)" duration:5];//    [self showLoading];
}
- (IBAction)stopAction:(id)sender {
    [self closeLoading];
}

@end
