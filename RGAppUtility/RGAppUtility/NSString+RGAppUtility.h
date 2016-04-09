//
//  NSString+RGAppUtility.h
//  RGAppUtility
//
//  Created by RAIN on 16/4/9.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MainBundle)

/**
 *  获取 Main Bundle 的路径
 *
 *  @return 描述 Main Bundle 路径的字符串
 */
+ (NSString *)rg_pathOfMainBundle;

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
+ (NSString *)rg_pathForResourceInMainBundle:(NSString *)name
                                      ofType:(NSString *)ext;

/**
 *  打印 Main Bundle 中的文件路径
 *
 *  @param name 文件名
 *  @param ext  文件后缀名
 */
+ (void)rg_printPathForResourceInMainBundle:(NSString *)name
                                     ofType:(NSString *)ext;

/**
 *  获取 Main Bundle 中文件内的字符串
 *
 *  @param name 文件名
 *  @param ext  文件后缀名
 *
 *  @return Main Bundle 中文件内的字符串
 */
- (instancetype)rg_initWithPathForResource:(NSString *)name
                                    ofType:(NSString *)ext;

/**
 *  获取 Main Bundle 中文件内的字符串
 *
 *  @param name 文件名
 *  @param ext  文件后缀名
 *
 *  @return Main Bundle 中文件内的字符串
 */
+ (NSString *)rg_stringWithPathForResource:(NSString *)name
                                    ofType:(NSString *)ext;

@end

@interface NSString (Sandbox)

+ (NSString *)rg_pathOfHomeDirectory;

+ (NSString *)rg_pathOfDocuments;

+ (NSString *)rg_pathOfCaches;

+ (NSString *)rg_pathOfTmp;

+ (void)rg_printPathOfHomeDirectory;

+ (void)rg_printPathOfDocuments;

+ (void)rg_printPathOfCaches;

+ (void)rg_printPathOfTmp;

@end
