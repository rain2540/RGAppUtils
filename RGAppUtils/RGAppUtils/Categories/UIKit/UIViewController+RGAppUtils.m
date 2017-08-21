//
//  UIViewController+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "UIViewController+RGAppUtils.h"

@implementation UIViewController (RGAppUtils)

- (UIViewController *)rg_topViewController {
    if ([self isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *)self;
        return [tabBarController.selectedViewController rg_topViewController];
    } else if ([self isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)self;
        return [navigationController.visibleViewController rg_topViewController];
    } else if (self.presentedViewController) {
        UIViewController *presentedViewController = self.presentedViewController;
        return [presentedViewController rg_topViewController];
    } else {
        return self;
    }
}

@end
