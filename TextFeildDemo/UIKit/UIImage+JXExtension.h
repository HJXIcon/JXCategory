//
//  UIImage+JXExtension.h
//  TextFeildDemo
//
//  Created by yituiyun on 2018/1/9.
//  Copyright © 2018年 yituiyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (JXExtension)

/**
 *  根据颜色生成一张图片
 *  @param color 提供的颜色
 */
+ (UIImage *)jx_imageWithColor:(UIColor *)color;


/**
 *  修改图片size，按比例进行缩放
 *
 *  @param image      原图片
 *  @param targetSize 要修改的size
 *
 *  @return 修改后的图片
 */
+ (UIImage *)jx_image:(UIImage*)image byScalingToSize:(CGSize)targetSize;

//截取图片的某一部分
+(UIImage *)jx_getSubImageRect:(CGRect)rect andImage:(UIImage *)image;

+(UIImage *)jx_reDrawImage:(UIImage *)backImage andImage:(UIImage *)image;

/**
 *  设置图片透明度
 * @param alpha 透明度
 * @param image 图片
 */
+ (UIImage *)jx_imageByApplyingAlpha:(CGFloat)alpha  image:(UIImage*)image;

/**
 *  图片的压缩方法
 *
 *  @param sourceImg   要被压缩的图片
 *  @param defineWidth 要被压缩的尺寸(宽)
 *
 *  @return 被压缩的图片
 */
+(UIImage *)jx_IMGCompressed:(UIImage *)sourceImg targetWidth:(CGFloat)defineWidth;


/**
 根据view生成图片
 
 @param view view
 @return image
 */
+ (UIImage *)jx_createImageFromView:(UIView *)view;

/**
 获取颜色梯度图片
 
 @param frame frame
 @param colors 颜色
 @param locations 决定每个渐变颜色的终止位置，这些值必须是递增的
 @param startPoint  起始位置
 @param endPoint 终止位置
 @return image
 */
+ (UIImage *)jx_imageGradientWithFrame:(CGRect)frame
                             colors:(NSArray <UIColor *>*)colors
                          locations:(NSArray<NSNumber *> *)locations
                         startPoint:(CGPoint)startPoint
                           endPoint:(CGPoint)endPoint;
@end
