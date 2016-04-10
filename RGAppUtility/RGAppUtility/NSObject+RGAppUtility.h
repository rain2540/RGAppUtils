//
//  NSObject+RGAppUtility.h
//  RGAppUtility
//
//  Created by RAIN on 16/4/9.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ClearNull)

/**
 *  获取去掉 nil 或 NSNull 后的字符串
 *
 *  @return 去掉 nil 或 NSNull 后的字符串
 */
- (nonnull NSString *)rg_withoutNull;

@end
