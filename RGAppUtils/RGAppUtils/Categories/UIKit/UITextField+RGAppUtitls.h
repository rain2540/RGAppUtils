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

- (void)rg_addRightImageByName:(NSString *)name
                         frame:(CGRect)frame
                   contentMode:(UIViewContentMode)contentMode
                      showMode:(UITextFieldViewMode)showMode;

@end

NS_ASSUME_NONNULL_END
