//
//  NSUserDefaults+RGUtility.h
//  RGAppUtility
//
//  Created by RAIN on 16/4/10.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (RGUtility)

/**
 *  检验 UserDefaults 中是否存在某个 key
 *
 *  @param key 待检验的 key
 *
 *  @return 检验结果的布尔值
 */
- (BOOL)rg_isHaveKey:(nonnull NSString *)key;


/**
 *  将某个 key - Object 值存入 UserDefaults 中
 *
 *  @param object 将要存入的 object
 *  @param key    将要存入的 key
 */
- (void)rg_saveObject:(nullable id)object
               forKey:(nonnull NSString *)key;

/**
 *  将某个 key - Bool 值存入 UserDefaults 中
 *
 *  @param value 将要存入的 Bool 值
 *  @param key   将要存入的 key
 */
- (void)rg_saveBool:(BOOL)value
             forKey:(nonnull NSString *)key;

/**
 *  将某个 key - double 值存入 UserDefaults 中
 *
 *  @param value 将要存入的 double 值
 *  @param key   将要存入的 key
 */
- (void)rg_saveDouble:(double)value
               forKey:(nonnull NSString *)key;

@end
