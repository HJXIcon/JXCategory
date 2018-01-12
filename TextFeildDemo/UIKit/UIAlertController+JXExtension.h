//
//  UIAlertController+JXExtension.h
//  TextFeildDemo
//
//  Created by yituiyun on 2018/1/9.
//  Copyright © 2018年 yituiyun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^UIAlertControllerJXCallBackBlock)(NSInteger buttonIndex);
@interface UIAlertController (JXBlock)<UIAlertViewDelegate>

@property (nonatomic, copy) UIAlertControllerJXCallBackBlock jx_alertViewCallBackBlock;

+ (void)jx_alertWithCallBackBlock:(UIAlertControllerJXCallBackBlock)alertViewCallBackBlock
                            title:(NSString *)title
                          message:(NSString *)message
                   preferredStyle:(UIAlertControllerStyle)preferredStyle
                           action:(UIAlertAction *)action
                     otherActions:(UIAlertAction *)otherActions, ...NS_REQUIRES_NIL_TERMINATION;
@end
