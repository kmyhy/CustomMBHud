//
//  UIViewController+CustomMBHUD.m
//  Client
//
//  Created by qq on 2017/1/26.
//  Copyright © 2017年 qq. All rights reserved.
//

#import "UIViewController+CustomMBHUD.h"
#import <objc/runtime.h>
#import "CircleMarkView.h"
#import "MyLoadingView.h"

static const void *HttpRequestHUDKey = &HttpRequestHUDKey;

@implementation UIViewController(CustomMBHUD)

- (MBProgressHUD *)HUD{
    return objc_getAssociatedObject(self, HttpRequestHUDKey);
}

- (void)setHUD:(MBProgressHUD *)HUD{
    objc_setAssociatedObject(self, HttpRequestHUDKey, HUD, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)showMarkWithText:(NSString*)text duration:(CGFloat)duration{
    CircleMarkView* circleMark = [[CircleMarkView alloc]init];
    circleMark.labelText = text;
    
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:circleMark];
    HUD.mode = MBProgressHUDModeCustomView;
    HUD.customView = circleMark;
    HUD.opacity=0.7;
    HUD.margin = 0;
    HUD.cornerRadius = 5;
    [self.view addSubview:HUD];
    [HUD show:YES];
    [self setHUD:HUD];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(duration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    });
}
-(void)showLoading{
    MyLoadingView* loading=[[MyLoadingView alloc]init];
    
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:loading];
    HUD.mode = MBProgressHUDModeCustomView;
    HUD.customView = loading;
    HUD.opacity=0;
    HUD.margin = 0;
    HUD.cornerRadius = 5;
    [self.view addSubview:HUD];
    [HUD show:YES];
    [self setHUD:HUD];
}
-(void)closeLoading{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    });
    
}
@end
