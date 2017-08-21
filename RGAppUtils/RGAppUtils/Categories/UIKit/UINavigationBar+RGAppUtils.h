//
//  UINavigationBar+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (RGAppUtils)

/**
 修改 Navigation Bar 的背景颜色

 @param color 提供给 Navigation Bar 的背景的 tint color
 */
+ (void)rg_barTintColor:(UIColor *)color;

/**
 修改 Navigation item 的 tint color

 @param color 提供给 Navigation item 的 tint color
 */
+ (void)rg_tintColor:(UIColor *)color;

/**
 修改 Navigation Bar 的标题文字颜色

 @param color 提供给 Navigation Bar 标题文字的颜色
 */
+ (void)rg_titleTextColor:(UIColor *)color;

@end
