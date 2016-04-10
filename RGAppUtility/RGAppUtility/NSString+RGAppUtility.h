//
//  NSString+RGAppUtility.h
//  RGAppUtility
//
//  Created by RAIN on 16/4/9.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AppInfo)

/**
 *  获取应用版本号
 *
 *  @return 描述应用版本号的字符串
 */
+ (nonnull NSString *)rg_stringOfAppVersion;

/**
 *  获取设备时间
 *
 *  @return 描述设备时间的字符串
 */
+ (nonnull NSString *)rg_stringOfDeviceTime;

@end

@interface NSString (MainBundle)

/**
 *  获取 Main Bundle 的路径
 *
 *  @return 描述 Main Bundle 路径的字符串
 */
+ (nonnull NSString *)rg_pathOfMainBundle;

/**
 *  打印 Main Bundle 路径
 */
+ (void)rg_printPathOfMainBundle;

/**
 *  获取 Main Bundle 中的文件路径
 *
 *  @param name 文件名
 *  @param ext  文件后缀名
 *
 *  @return 描述 Main Bundle 中的文件路径的字符串
 */
+ (nullable NSString *)rg_pathForResourceInMainBundle:(nullable NSString *)name
                                               ofType:(nullable NSString *)ext;

/**
 *  打印 Main Bundle 中的文件路径
 *
 *  @param name 文件名
 *  @param ext  文件后缀名
 */
+ (void)rg_printPathForResourceInMainBundle:(nullable NSString *)name
                                     ofType:(nullable NSString *)ext;

/**
 *  获取 Main Bundle 中文件内的字符串
 *
 *  @param name 文件名
 *  @param ext  文件后缀名
 *
 *  @return Main Bundle 中文件内的字符串
 */
- (nullable instancetype)rg_initWithPathForResource:(nullable NSString *)name
                                             ofType:(nullable NSString *)ext;

/**
 *  获取 Main Bundle 中文件内的字符串
 *
 *  @param name 文件名
 *  @param ext  文件后缀名
 *
 *  @return Main Bundle 中文件内的字符串
 */
+ (nullable NSString *)rg_stringWithPathForResource:(nullable NSString *)name
                                             ofType:(nullable NSString *)ext;

@end

@interface NSString (Sandbox)

/**
 *  获取 Home Directory 的路径
 *
 *  @return 描述 HomeDirectory 路径的字符串
 */
+ (nonnull NSString *)rg_pathOfHomeDirectory;

/**
 *  获取 Documents 文件夹的路径
 *
 *  @return 描述 Documents 文件夹路径的字符串
 */
+ (nonnull NSString *)rg_pathOfDocuments;

/**
 *  获取 Caches 文件夹的路径
 *
 *  @return 描述 Caches 文件夹路径的字符串
 */
+ (nonnull NSString *)rg_pathOfCaches;

/**
 *  获取 Tmp 文件夹的路径
 *
 *  @return 描述 Tmp 文件夹路径的字符串
 */
+ (nonnull NSString *)rg_pathOfTmp;

/**
 *  打印 HomeDirectory 路径
 */
+ (void)rg_printPathOfHomeDirectory;

/**
 *  打印 Documents 文件夹的路径
 */
+ (void)rg_printPathOfDocuments;

/**
 *  打印 Caches 文件夹的路径
 */
+ (void)rg_printPathOfCaches;

/**
 *  打印 Tmp 文件夹的路径
 */
+ (void)rg_printPathOfTmp;

@end
