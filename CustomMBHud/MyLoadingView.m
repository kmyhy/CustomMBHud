//
//  MyLoadingView.m
//  CustomMBHud
//
//  Created by qq on 2017/7/26.
//  Copyright © 2017年 qq. All rights reserved.
//

#import "MyLoadingView.h"

@interface MyLoadingView(){
    CGRect customRect;
    UIEdgeInsets imageInsets;
}
@property(nonatomic,strong)UILabel* label;
@end

@implementation MyLoadingView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self setup];
    }
    return self;
}
-(instancetype)init{
    customRect = CGRectMake(0, 0, 140, 140);
    self = [self initWithFrame:customRect];
    return self;
}

-(void)setup{
    
    imageInsets = UIEdgeInsetsMake(10, 10, 10, 10);
    
    UIImageView* imageView=[[UIImageView alloc]initWithFrame:CGRectInset(customRect, imageInsets.left, imageInsets.top)];
    
    _imageArray=@[
                  [UIImage imageNamed:@"正在加载1"],
                  [UIImage imageNamed:@"正在加载2"],
                  [UIImage imageNamed:@"正在加载3"],
                  [UIImage imageNamed:@"正在加载4"],
                  [UIImage imageNamed:@"正在加载5"],
                  [UIImage imageNamed:@"正在加载6"],
                  [UIImage imageNamed:@"正在加载7"],
                  [UIImage imageNamed:@"正在加载8"],
                  [UIImage imageNamed:@"正在加载9"],
                  [UIImage imageNamed:@"正在加载10"]
                  
                  ];
    
    imageView.animationImages = _imageArray;
    imageView.animationDuration = 0.5;
    imageView.animationRepeatCount = 0;
    
    [self addSubview:imageView];
    
    [imageView startAnimating];
    
    imageView.center = self.center;
    
    //    self.labelText = @"正在加载中...";
    //    self.fontSize = 11;
    self.backgroundColor = [UIColor clearColor];
    
    self.hudColor = [UIColor colorWithWhite:1 alpha:0.7];
}


- (void)drawRect:(CGRect)frame
{
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect:customRect cornerRadius:5];
    [_hudColor setFill];
    [rectanglePath fill];
    
}


@end
