//
//  UIView+JXExtension.h
//  TextFeildDemo
//
//  Created by yituiyun on 2018/1/9.
//  Copyright © 2018年 yituiyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JXExtension)
@property (nonatomic, assign) CGFloat jx_x;
@property (nonatomic, assign) CGFloat jx_y;
@property (nonatomic, assign) CGFloat jx_width;
@property (nonatomic, assign) CGFloat jx_height;
@property (nonatomic, assign) CGSize jx_size;
@property(nonatomic,assign) CGFloat jx_centerX;
@property(nonatomic,assign) CGFloat jx_centerY;

@property (nonatomic, assign) CGFloat jx_cornerRadius;
@property (nonatomic, assign) CGFloat jx_borderWidth;
@property (nonatomic, assign) CGColorRef jx_borderColor;
@end
