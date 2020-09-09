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
    return [[self class] rg_topViewControllerOf:self];
}

+ (UIViewController *)rg_topViewControllerOfKeyWindowRoot {
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    UIViewController *topVC = [[self class] rg_topViewControllerOf:rootVC];
    return topVC;
}

+ (UIViewController *)rg_topViewControllerOf:(UIViewController *)rootVC {
    UIViewController *topVC;

    if ([rootVC presentedViewController] != nil) {
        // 根视图是被 present 出来的
        rootVC = [rootVC presentedViewController];
    }

    if ([rootVC isKindOfClass:[UITabBarController class]]) {
        // 根视图为 UITabBarController
        UITabBarController *tabBarController = (UITabBarController *)rootVC;
        topVC = [[self class] rg_topViewControllerOf:[tabBarController selectedViewController]];
    } else if ([rootVC isKindOfClass:[UINavigationController class]]) {
        // 根视图为 UINavigationController
        UINavigationController *navigationController = (UINavigationController *)rootVC;
        topVC = [[self class] rg_topViewControllerOf:[navigationController visibleViewController]];
    } else {
        // 根视图非导航类
        topVC = rootVC;
    }

    return topVC;
}

@end
