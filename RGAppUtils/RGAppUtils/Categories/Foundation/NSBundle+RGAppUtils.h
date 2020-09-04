//
//  NSBundle+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (RGAppUtils)

/**
 Main Bundle 路径

 @return 描述 Main Bundle 路径的字符串
 */
+ (nonnull NSString *)rg_mainBundlePath;

/**
 应用版本号

 @return 描述应用版本号的字符串
 */
+ (nonnull NSString *)rg_appVersion;

/**
 应用显示名称

 @return 描述应用显示名称的字符串
 */
+ (nonnull NSString *)rg_displayName;

/**
 应用的 Bundle Identifier

 @return 描述应用 Bundle Identifier 的字符串
 */
+ (nonnull NSString *)rg_identifier;

/**
 获取 Main Bundle 中的文件路径

 @param name 文件名
 @param ext 文件后缀名
 @return 描述Main Bundle 中文件的路径的字符串
 */
+ (nullable NSString *)rg_pathForResourceInMainBundle:(nullable NSString *)name
                                               ofType:(nullable NSString *)ext;

/**
 获取 Main Bundle 中文件内的字符串

 @param name 文件名
 @param ext 文件后缀名
 @return Main Bundle 中文件内的字符串
 */
+ (nullable NSString *)rg_stringWithResourceInMainBundle:(nullable NSString *)name
                                                  ofType:(nullable NSString *)ext;

@end
