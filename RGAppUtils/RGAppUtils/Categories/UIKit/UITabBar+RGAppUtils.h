//
//  UITabBar+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (RGAppUtils)

/**
 修改 Tab Bar 的背景颜色

 @param color 提供给 Tab Bar 的背景的 tint color
 */
+ (void)rg_barTintColor:(UIColor *)color;

/**
 修改 Tab item 的 tint color

 @param color 提供给 Tab item 的 tint color
 */
+ (void)rg_tintColor:(UIColor *)color;

@end
