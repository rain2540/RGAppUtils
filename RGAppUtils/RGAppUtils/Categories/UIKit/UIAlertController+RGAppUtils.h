//
//  UIAlertController+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/16.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (RGAppUtils)

/**
 在视图中添加 Alert

 @param title Alert 标题
 @param message Alert 内容
 @param viewController 展示 Alert 的视图
 @param actions 完成的 actions
 */
+ (void)rg_showAlertWithTitle:(NSString *)title
                      message:(NSString *)message
             inViewController:(UIViewController *)viewController
                      actions:(NSArray *)actions;

/**
 在视图中添加 ActionSheet

 @param title ActionSheet 标题
 @param message ActionSheet 内容
 @param viewController 展示 ActionSheet 的视图
 @param actions 完成的 actions
 */
+ (void)rg_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                   inViewController:(UIViewController *)viewController
                            actions:(NSArray *)actions;

@end
