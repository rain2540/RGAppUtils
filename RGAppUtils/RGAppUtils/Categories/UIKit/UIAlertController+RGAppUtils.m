//
//  UIAlertController+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/16.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "UIAlertController+RGAppUtils.h"

@implementation UIAlertController (RGAppUtils)

+ (void)rg_showAlertWithTitle:(NSString *)title
                      message:(NSString *)message
             inViewController:(UIViewController *)viewController
                      actions:(NSArray *)actions
{
    [[self class] rg_showWithTitle:title
                           message:message
                    preferredStyle:UIAlertControllerStyleAlert
                  inViewController:viewController
                           actions:actions];
}

+ (void)rg_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                   inViewController:(UIViewController *)viewController
                            actions:(NSArray *)actions
{
    [[self class] rg_showWithTitle:title
                           message:message
                    preferredStyle:UIAlertControllerStyleActionSheet
                  inViewController:viewController
                           actions:actions];
}

#pragma mark Private Method
+ (void)rg_showWithTitle:(NSString *)title
                 message:(NSString *)message
          preferredStyle:(UIAlertControllerStyle)style
        inViewController:(UIViewController *)viewController
                 actions:(NSArray *)actions
{
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:title
                                        message:message
                                 preferredStyle:style];
    for (UIAlertAction *action in actions) {
        [alertController addAction:action];
    }
    [viewController presentViewController:alertController animated:YES completion:nil];
}

@end
