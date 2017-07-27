//
//  CircleMarkView.m
//  Client
//
//  Created by qq on 2017/1/26.
//  Copyright © 2017年 qq. All rights reserved.
//

#import "CircleMarkView.h"

@implementation CircleMarkView


-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        [self setup];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self setup];
    }
    return self;
}
-(instancetype)init{
    CGRect rect = CGRectMake(0, 0, CircleMarkWidth, CircleMarkHeight);
    self = [self initWithFrame:rect];
    return self;
}

-(void)setup{
    self.labelText = @"提交成功";
    self.fontSize = 15;
    self.backgroundColor = [UIColor clearColor];
}


- (void)drawRect:(CGRect)frame
{
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    UIColor* color2 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.67];
    
    CGRect group2 = CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.00000 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.00000 + 0.5), floor(CGRectGetWidth(frame) * 1.00000 + 0.5) - floor(CGRectGetWidth(frame) * 0.00000 + 0.5), floor(CGRectGetHeight(frame) * 1.00000 + 0.5) - floor(CGRectGetHeight(frame) * 0.00000 + 0.5));
    
    {
//        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(CGRectGetMinX(group2) + floor(CGRectGetWidth(group2) * 0.00000 + 0.5), CGRectGetMinY(group2) + floor(CGRectGetHeight(group2) * 0.00000 + 0.5), floor(CGRectGetWidth(group2) * 1.00000 + 0.5) - floor(CGRectGetWidth(group2) * 0.00000 + 0.5), floor(CGRectGetHeight(group2) * 1.00000 + 0.5) - floor(CGRectGetHeight(group2) * 0.00000 + 0.5)) cornerRadius: 14];
//        [color2 setFill];
//        [rectanglePath fill];
        
        UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(group2) + floor(CGRectGetWidth(group2) * 0.40026) + 0.5, CGRectGetMinY(group2) + floor(CGRectGetHeight(group2) * 0.14929) + 0.5, floor(CGRectGetWidth(group2) * 0.59974) - floor(CGRectGetWidth(group2) * 0.40026), floor(CGRectGetHeight(group2) * 0.43839) - floor(CGRectGetHeight(group2) * 0.14929))];
        [UIColor.whiteColor setStroke];
        ovalPath.lineWidth = 0.5;
        [ovalPath stroke];
        
        
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group2) + 0.45207 * CGRectGetWidth(group2), CGRectGetMinY(group2) + 0.28918 * CGRectGetHeight(group2))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group2) + 0.49093 * CGRectGetWidth(group2), CGRectGetMinY(group2) + 0.34515 * CGRectGetHeight(group2))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group2) + 0.55570 * CGRectGetWidth(group2), CGRectGetMinY(group2) + 0.25560 * CGRectGetHeight(group2))];
        bezierPath.lineCapStyle = kCGLineCapRound;
        
        bezierPath.lineJoinStyle = kCGLineJoinRound;
        
        [UIColor.whiteColor setStroke];
        bezierPath.lineWidth = 2.0;
        [bezierPath stroke];
        
        CGRect textRect = CGRectMake(CGRectGetMinX(group2) + floor(CGRectGetWidth(group2) * 0.21244 + 0.5), CGRectGetMinY(group2) + floor(CGRectGetHeight(group2) * 0.61611 + 0.5), floor(CGRectGetWidth(group2) * 0.79534 + 0.5) - floor(CGRectGetWidth(group2) * 0.21244 + 0.5), floor(CGRectGetHeight(group2) * 0.78673 + 0.5) - floor(CGRectGetHeight(group2) * 0.61611 + 0.5));
        {
            NSString* textContent = _labelText;
            NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
            textStyle.alignment = NSTextAlignmentCenter;
            
            NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: _fontSize], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: textStyle};
            
            CGFloat textTextHeight = [textContent boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
            CGContextSaveGState(context);
            CGContextClipToRect(context, textRect);
            [textContent drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
            CGContextRestoreGState(context);
        }
    }
    
}


@end
