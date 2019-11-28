//
//  NSObject+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (RGAppUtils)

/**
 获取去掉 nil 或 NSNull 后的字符串

 @return 去掉 nil 或 NSNull 后的字符串
 */
- (nonnull NSString *)rg_clearNull;

/// 清除 nil 和 NSNull 对象，以及其他需要清除的字符串，并返回字符串
/// @param otherStrings 其他需要清除的字符串
- (nonnull NSString *)rg_clearNilAndOtherStrings:(nullable NSArray <NSString *> *)otherStrings;

/**
 转换为 JSON String

 @return 转换出的 JSON String
 */
- (nullable NSString *)rg_objectToJSONString;

@end
