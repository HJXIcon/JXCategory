//
//  UITextField+JKInputLimit.h
//  JKCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 2016/11/29.
//  Copyright © 2016年 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>
/**-----------------------------------------------------------------------------
 * @name UITextField+JXInputLimit
 * -----------------------------------------------------------------------------
 */
#pragma mark - *** JXInputLimit
@interface UITextField (JXInputLimit)
/// 字数限制
@property (nonatomic,assign)NSInteger jx_maxLength;
@end

/**-----------------------------------------------------------------------------
 * @name UITextField+JXShake
 * -----------------------------------------------------------------------------
 */
#pragma mark - *** JXShake
@interface UITextField (JXShake)

typedef NS_ENUM(NSInteger, JXShakedDirection) {
    JXShakedDirectionHorizontal,
    JXShakedDirectionVertical
};

/** Shake the UITextField
 *
 * Shake the text field with default values
 */
- (void)jx_shake;

/** Shake the UITextField
 *
 * Shake the text field a given number of times
 *
 * @param times The number of shakes
 * @param delta The width of the shake
 */
- (void)jx_shake:(int)times withDelta:(CGFloat)delta;

/** Shake the UITextField
 *
 * Shake the text field a given number of times
 *
 * @param times The number of shakes
 * @param delta The width of the shake
 * @param handler A block object to be executed when the shake sequence ends
 */
- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
      completion:(void((^)(void)))handler;

/** Shake the UITextField at a custom speed
 *
 * Shake the text field a given number of times with a given speed
 *
 * @param times The number of shakes
 * @param delta The width of the shake
 * @param interval The duration of one shake
 */
- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
           speed:(NSTimeInterval)interval;

/** Shake the UITextField at a custom speed
 *
 * Shake the text field a given number of times with a given speed
 *
 * @param times The number of shakes
 * @param delta The width of the shake
 * @param interval The duration of one shake
 * @param handler A block object to be executed when the shake sequence ends
 */
- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
           speed:(NSTimeInterval)interval
      completion:(void((^)(void)))handler;

/** Shake the UITextField at a custom speed
 *
 * Shake the text field a given number of times with a given speed
 *
 * @param times The number of shakes
 * @param delta The width of the shake
 * @param interval The duration of one shake
 * @param shakeDirection of the shake
 */
- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
           speed:(NSTimeInterval)interval
  shakeDirection:(JXShakedDirection)shakeDirection;

/** Shake the UITextField at a custom speed
 *
 * Shake the text field a given number of times with a given speed
 *
 * @param times The number of shakes
 * @param delta The width of the shake
 * @param interval The duration of one shake
 * @param shakeDirection of the shake
 * @param handler A block object to be executed when the shake sequence ends
 */
- (void)jx_shake:(int)times
       withDelta:(CGFloat)delta
           speed:(NSTimeInterval)interval
  shakeDirection:(JXShakedDirection)shakeDirection
      completion:(void((^)(void)))handler;
@end
