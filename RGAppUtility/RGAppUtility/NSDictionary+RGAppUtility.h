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
