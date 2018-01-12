//
//  UITextField+JKInputLimit.m
//  JKCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 2016/11/29.
//  Copyright © 2016年 www.skyfox.org. All rights reserved.
//

#import "UITextField+JXExtension.h"
#import <objc/runtime.h>

#pragma mark - *** JXInputLimit
static const void *JXTextFieldInputLimitMaxLength = &JXTextFieldInputLimitMaxLength;
@implementation UITextField (JXInputLimit)

- (NSInteger)jx_maxLength {
    return [objc_getAssociatedObject(self, JXTextFieldInputLimitMaxLength) integerValue];
}
- (void)setJx_maxLength:(NSInteger)maxLength {
    objc_setAssociatedObject(self, JXTextFieldInputLimitMaxLength, @(maxLength), OBJC_ASSOCIATION_ASSIGN);
    [self addTarget:self action:@selector(jx_textFieldTextDidChange) forControlEvents:UIControlEventEditingChanged];
}
- (void)jx_textFieldTextDidChange {
    NSString *toBeString = self.text;
    //获取高亮部分
    UITextRange *selectedRange = [self markedTextRange];
    UITextPosition *position = [self positionFromPosition:selectedRange.start offset:0];
    
    //没有高亮选择的字，则对已输入的文字进行字数统计和限制
    //在iOS7下,position对象总是不为nil
    if ( (!position ||!selectedRange) && (self.jx_maxLength > 0 && toBeString.length > self.jx_maxLength))
    {
        NSRange rangeIndex = [toBeString rangeOfComposedCharacterSequenceAtIndex:self.jx_maxLength];
        if (rangeIndex.length == 1)
        {
            self.text = [toBeString substringToIndex:self.jx_maxLength];
        }
        else
        {
            NSRange rangeRange = [toBeString rangeOfComposedCharacterSequencesForRange:NSMakeRange(0, self.jx_maxLength)];
            NSInteger tmpLength;
            if (rangeRange.length > self.jx_maxLength) {
                tmpLength = rangeRange.length - rangeIndex.length;
            }else{
                tmpLength = rangeRange.length;
            }
            self.text = [toBeString substringWithRange:NSMakeRange(0, tmpLength)];
        }
    }
}
@end

#pragma mark - *** JXShake
@implementation UITextField (JXShake)

- (void)jx_shake {
    [self jx_shake:10 withDelta:5 completion:nil];
}

- (void)jx_shake:(int)times withDelta:(CGFloat)delta {
    [self jx_shake:times withDelta:delta completion:nil];
}

- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
      completion:(void(^)(void))handler {
    [self _jx_shake:times direction:1 currentTimes:0 withDelta:delta speed:0.03 shakeDirection:JXShakedDirectionHorizontal completion:handler];
}

- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
           speed:(NSTimeInterval)interval {
    [self jx_shake:times withDelta:delta speed:interval completion:nil];
}

- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
           speed:(NSTimeInterval)interval
      completion:(void(^)(void))handler {
    [self _jx_shake:times direction:1 currentTimes:0 withDelta:delta speed:interval shakeDirection:JXShakedDirectionHorizontal completion:handler];
}

- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
           speed:(NSTimeInterval)interval
  shakeDirection:(JXShakedDirection)shakeDirection {
    [self jx_shake:times withDelta:delta speed:interval shakeDirection:shakeDirection completion:nil];
}

- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
           speed:(NSTimeInterval)interval
  shakeDirection:(JXShakedDirection)shakeDirection
      completion:(void(^)(void))handler {
    [self _jx_shake:times direction:1 currentTimes:0 withDelta:delta speed:interval shakeDirection:shakeDirection completion:handler];
}

- (void)_jx_shake:(int)times
        direction:(int)direction
     currentTimes:(int)current
        withDelta:(CGFloat)delta
            speed:(NSTimeInterval)interval
   shakeDirection:(JXShakedDirection)shakeDirection
       completion:(void(^)(void))handler {
    [UIView animateWithDuration:interval animations:^{
        self.transform = (shakeDirection == JXShakedDirectionHorizontal) ? CGAffineTransformMakeTranslation(delta * direction, 0) : CGAffineTransformMakeTranslation(0, delta * direction);
    } completion:^(BOOL finished) {
        if(current >= times) {
            [UIView animateWithDuration:interval animations:^{
                self.transform = CGAffineTransformIdentity;
            } completion:^(BOOL finished) {
                if (handler) {
                    handler();
                }
            }];
            return;
        }
        [self _jx_shake:(times - 1)
              direction:direction * -1
           currentTimes:current + 1
              withDelta:delta
                  speed:interval
         shakeDirection:shakeDirection
             completion:handler];
    }];
}

@end
