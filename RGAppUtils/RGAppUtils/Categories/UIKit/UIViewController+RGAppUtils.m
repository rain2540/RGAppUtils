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


+ (UIViewController *)rg_topViewControllerOf:(UIViewController *)rootVC {
    UIViewController *topVC;

    if ([rootVC presentedViewController] != nil) {
        rootVC = [rootVC presentedViewController];
    }

    if ([rootVC isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *)rootVC;
        topVC = [[self class] rg_topViewControllerOf:[tabBarController selectedViewController]];
    } else if ([rootVC isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)rootVC;
        topVC = [[self class] rg_topViewControllerOf:[navigationController visibleViewController]];
    } else {
        topVC = rootVC;
    }

    return topVC;
}

@end
