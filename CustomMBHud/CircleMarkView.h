//
//  CircleMarkView.h
//  Client
//
//  Created by qq on 2017/1/26.
//  Copyright © 2017年 qq. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CircleMarkWidth 155.0
#define CircleMarkHeight 105.0
#define CircleMarkBgColor [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.1]

@interface CircleMarkView : UIView
@property(strong,nonatomic)NSString* labelText;
@property(assign,nonatomic)CGFloat fontSize;
@end
