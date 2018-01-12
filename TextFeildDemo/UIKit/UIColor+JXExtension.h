//
//  UIColor+JXExtension.h
//  TextFeildDemo
//
//  Created by yituiyun on 2018/1/9.
//  Copyright © 2018年 yituiyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (JXExtension)

+ (UIColor *)jx_colorWithHexString:(NSString *)string;
+ (UIColor *)jx_colorWithHexString:(NSString *)string alpha:(CGFloat)alpha;

/**
 *  @brief  渐变颜色
 *
 *  @param c1     开始颜色
 *  @param c2     结束颜色
 *  @param height 渐变高度
 *
 *  @return 渐变颜色
 */
+ (UIColor*)jx_gradientFromColor:(UIColor*)c1 toColor:(UIColor*)c2 withHeight:(int)height;

@end
