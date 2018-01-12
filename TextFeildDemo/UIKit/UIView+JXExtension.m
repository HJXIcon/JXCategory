//
//  UIView+JXExtension.m
//  TextFeildDemo
//
//  Created by yituiyun on 2018/1/9.
//  Copyright © 2018年 yituiyun. All rights reserved.
//

#import "UIView+JXExtension.h"

@implementation UIView (JXExtension)
- (void)setJx_x:(CGFloat)jx_x
{
    CGRect frame = self.frame;
    frame.origin.x = jx_x;
    self.frame = frame;
}

- (CGFloat)jx_x
{
    return self.frame.origin.x;
}

- (void)setJx_y:(CGFloat)jx_y
{
    CGRect frame = self.frame;
    frame.origin.y = jx_y;
    self.frame = frame;
}

- (CGFloat)jx_y
{
    return self.frame.origin.y;
}

- (void)setJx_width:(CGFloat)jx_width
{
    CGRect frame = self.frame;
    frame.size.width = jx_width;
    self.frame = frame;
}

- (CGFloat)jx_width
{
    return self.frame.size.width;
}

- (void)setJx_height:(CGFloat)jx_height
{
    CGRect frame = self.frame;
    frame.size.height = jx_height;
    self.frame = frame;
}

- (CGFloat)jx_height
{
    return self.frame.size.height;
}

- (void)setJx_size:(CGSize)jx_size
{
    //    self.width = size.width;
    //    self.height = size.height;
    CGRect frame = self.frame;
    frame.size = jx_size;
    self.frame = frame;
}

- (void)setJx_centerX:(CGFloat)jx_centerX
{
    CGPoint center = self.center;
    center.x = jx_centerX;
    self.center = center;
}

-(CGFloat)jx_centerX{
    return self.center.x;
}

- (void)setJx_centerY:(CGFloat)jx_centerY
{
    CGPoint center = self.center;
    center.y = jx_centerY;
    self.center = center;
}

-(CGFloat)jx_centerY{
    return self.center.y;
}

- (CGSize)jx_size
{
    return self.frame.size;
}


- (void)setJx_cornerRadius:(CGFloat)jx_cornerRadius{
    self.layer.cornerRadius = jx_cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)jx_cornerRadius{
    return self.layer.cornerRadius;
}

- (void)setJx_borderWidth:(CGFloat)jx_borderWidth{
    self.layer.borderWidth = jx_borderWidth;
}

- (CGFloat)jx_borderWidth{
    return self.layer.borderWidth;
}

- (void)setJx_borderColor:(CGColorRef)jx_borderColor{
    self.layer.borderColor = jx_borderColor;
}
- (CGColorRef)jx_borderColor{
    return self.layer.borderColor;
}
@end
