//
//  NSDictionary+RGAppUtility.h
//  RGAppUtility
//
//  Created by RAIN on 16/4/10.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MainBundle)

/**
 *  获取 Main Bundle 中文件内的字典
 *
 *  @param name 文件名
 *  @param ext  文件扩展名
 *
 *  @return Main Bundle 中文件内的字典
 */
- (nullable instancetype)rg_initWithMainBundlePathForResource:(nullable NSString *)name
                                                       ofType:(nullable NSString *)ext;

/**
 *  获取 Main Bundle 中文件内的字典
 *
 *  @param name 文件名
 *  @param ext  文件扩展名
 *
 *  @return Main Bundle 中文件内的字典
 */
+ (nullable NSDictionary *)rg_dictionaryWithMainBundlePathForResource:(nullable NSString *)name
                                                               ofType:(nullable NSString *)ext;

@end

@interface NSDictionary (KeyExist)

/**
 *  检验字典中是否存在某个 key
 *
 *  @param key 待检验的 key
 *
 *  @return 检验结果的布尔值
 */
- (BOOL)rg_isHaveKey:(nonnull NSString *)key;

@end
