//
//  NSFileManager+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (RGAppUtils)

/**
 获取 Home Directory 的路径

 @return HomeDirectory 路径
 */
+ (NSString *)rg_homeDirectoryPath;

/**
 获取 Documents 文件夹的路径

 @return Documents 文件夹路径
 */
+ (NSString *)rg_documentsPath;

/**
 获取 Caches 文件夹路径

 @return Caches 文件夹路径
 */
+ (NSString *)rg_cachesPath;

/**
 获取 Temporary 文件夹的路径

 @return Temporary 文件夹路径
 */
+ (NSString *)rg_temporaryPath;

/**
 获取缓存大小

 @return 缓存大小
 */
+ (double)rg_cacheSize;

/**
 获取描述缓存大小的字符串

 @return 描述缓存大小的字符串
 */
+ (NSString *)rg_cacheSizeString;

/**
 清除缓存
 */
+ (void)rg_clearCache;

@end
