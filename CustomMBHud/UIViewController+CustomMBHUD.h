//
//  UIViewController+CustomMBHUD.h
//  Client
//
//  Created by qq on 2017/1/26.
//  Copyright © 2017年 qq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"


@interface UIViewController(CustomMBHUD)

- (void)showMarkWithText:(NSString*)text duration:(CGFloat)duration;
-(void)showLoading;
-(void)closeLoading;
@end
