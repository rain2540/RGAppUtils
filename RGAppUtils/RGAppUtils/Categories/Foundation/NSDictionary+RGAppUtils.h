//
//  NSDictionary+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (RGAppUtils)

#pragma mark Convenience Initializer

/**
 获取 Main Bundle 中文件内的字典

 @param name 文件名
 @param ext 文件扩展名
 @return Main Bundle 中文件内的字典
 */
- (nullable instancetype)rg_initWithMainBundlePathForResource:(nullable NSString *)name
                                                       ofType:(nullable NSString *)ext;

/**
 获取 Main Bundle 中文件内的字典

 @param name 文件名
 @param ext 文件扩展名
 @return Main Bundle 中文件内的字典
 */
+ (nullable NSDictionary *)rg_dictionaryWithMainBundlePathForResource:(nullable NSString *)name
                                                               ofType:(nullable NSString *)ext;


#pragma mark - Puclic

/**
 检验 NSDictionary 中是否存在某个 key

 @param key 待检验的 key
 @return 检验结果的布尔值
 */
- (BOOL)rg_isHaveKey:(nonnull NSString *)key;

/// 获取 NSDictionary 某个 key 对应的值
/// @param key 待获取值的 key
- (nullable id)rg_valueForKey:(nonnull NSString *)key;

/// 获取 NSDictionary 某个 key 对应的字符串
/// @param key 待获取字符串的 key
- (nonnull NSString *)rg_stringForKey:(nonnull NSString *)key;

@end
