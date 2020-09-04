//
//  UIAlertController+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/16.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (RGAppUtils)

/// 在视图中显示 Alert
/// @param title Alert 标题
/// @param message Alert 内容
/// @param viewController 展示 Alert 的视图
/// @param actions 完成的 actions
+ (void)rg_showAlertWithTitle:(NSString *)title
                      message:(NSString *)message
             inViewController:(UIViewController *)viewController
                      actions:(NSArray<UIAlertAction *> *)actions;

/// 创建 alert
/// @param title alert 标题
/// @param message alert 内容
/// @param actions 完成的 actions
+ (UIAlertController *)rg_alertWithTitle:(NSString *)title
                                 message:(NSString *)message
                                 actions:(NSArray<UIAlertAction *> *)actions;

/// 在视图中显示 ActionSheet
/// @param title ActionSheet 标题
/// @param message ActionSheet 内容
/// @param viewController 展示 ActionSheet 的视图
/// @param actions 完成的 actions
+ (void)rg_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                   inViewController:(UIViewController *)viewController
                            actions:(NSArray<UIAlertAction *> *)actions;

/// 创建 action sheet
/// @param title action sheet 标题
/// @param message action sheet 内容
/// @param actions 完成的 actions
+ (UIAlertController *)rg_actionSheetWithTitle:(NSString *)title
                                       message:(NSString *)message
                                       actions:(NSArray<UIAlertAction *> *)actions;

@end
