//
//  UIViewController+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (RGAppUtils)

/// 获取位于最上层的视图
- (UIViewController *)rg_topViewController;

/// 获取当前屏幕显示的 view controller
+ (UIViewController *)rg_topViewControllerOfKeyWindowRoot;

/// 获取 root view controller 的最上层视图
/// @param rootVC 需要获取 top view controller 的根视图
+ (UIViewController *)rg_topViewControllerOf:(UIViewController *)rootVC;

@end
