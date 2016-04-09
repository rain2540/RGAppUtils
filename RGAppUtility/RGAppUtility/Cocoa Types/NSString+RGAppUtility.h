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
 *  打印 Main Bundle 路径
 */
+ (void)pathOfMainBundle;

/**
 *  获取 Main Bundle 中的文件路径
 *
 *  @param name 文件名
 *  @param ext  文件后缀名
 *
 *  @return Main Bundle 中的文件路径
 */
+ (NSString *)pathForResourceInMainBundle:(NSString *)name
                                   ofType:(NSString *)ext;

/**
 *  获取 Main Bundle 中文件内的字符串
 *
 *  @param name 文件名
 *  @param ext  文件后缀名
 *
 *  @return Main Bundle 中文件内的字符串
 */
- (instancetype)initWithPathForResource:(NSString *)name
                                 ofType:(NSString *)ext;

@end

@interface NSString (Sandbox)

+ (NSString *)pathOfHomeDirectory;

+ (NSString *)pathOfDocuments;

+ (NSString *)pathOfCaches;

+ (NSString *)pathOfTmp;

@end
