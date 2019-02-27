//
//  UITextField+RGAppUtitls.h
//  RGAppUtils
//
//  Created by RAIN on 2019/2/25.
//  Copyright © 2019 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (RGAppUtitls)

- (void)rg_addLeftImageByName:(NSString *)name
                        frame:(CGRect)frame
                  contentMode:(UIViewContentMode)contentMode
                     showMode:(UITextFieldViewMode)showMode;

/**
 为 TextField 添加右侧图片

 @param name 图片名
 @param frame 图片的 frame
 @param contentMode 图片的 content mode
 @param showMode 图片的显示模式
 */
- (void)rg_addRightImageByName:(NSString *)name
                         frame:(CGRect)frame
                   contentMode:(UIViewContentMode)contentMode
                      showMode:(UITextFieldViewMode)showMode;

@end

NS_ASSUME_NONNULL_END
