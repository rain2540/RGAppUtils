//
//  RGMainScreen.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/16.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RGMainScreen : UIScreen

/**
 获取 Main Screen 的 width

 @return Main Screen 的 width
 */
+ (CGFloat)width;

/**
 获取 Main Screen 的 height

 @return Main Screen 的 height
 */
+ (CGFloat)height;

/**
 获取 Main Screen 的 size

 @return Main Screen 的 size
 */
+ (CGSize)size;

/**
 获取 Main Screen 的 bounds

 @return Main Screen 的 bounds
 */
+ (CGRect)bounds;

@end
