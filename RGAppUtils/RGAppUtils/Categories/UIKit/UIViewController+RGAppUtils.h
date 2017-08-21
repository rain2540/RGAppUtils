//
//  UIViewController+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (RGAppUtils)

/**
 获取位于最上层的视图

 @return 位于最上层的视图
 */
- (UIViewController *)rg_topViewController;

@end
