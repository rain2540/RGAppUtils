//
//  UITabBar+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "UITabBar+RGAppUtils.h"

@implementation UITabBar (RGAppUtils)

+ (void)rg_barTintColor:(UIColor *)color {
    [UITabBar appearance].barTintColor = color;
}

+ (void)rg_tintColor:(UIColor *)color {
    [UITabBar appearance].tintColor = color;
}

@end
