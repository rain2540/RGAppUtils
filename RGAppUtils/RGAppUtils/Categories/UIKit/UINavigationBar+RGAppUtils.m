//
//  UINavigationBar+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "UINavigationBar+RGAppUtils.h"

@implementation UINavigationBar (RGAppUtils)

+ (void)rg_barTintColor:(UIColor *)color {
    [UINavigationBar appearance].barTintColor = color;
}

+ (void)rg_tintColor:(UIColor *)color {
    [UINavigationBar appearance].tintColor = color;
}

+ (void)rg_titleTextColor:(UIColor *)color {
    [UINavigationBar appearance].titleTextAttributes = @{NSForegroundColorAttributeName: color};
}

@end
