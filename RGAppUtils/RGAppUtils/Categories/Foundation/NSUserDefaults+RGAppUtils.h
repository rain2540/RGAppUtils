//
//  NSUserDefaults+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (RGAppUtils)

/**
 检验 UserDefaults 中是否存在某个 key

 @param key 待检验的 key
 @return 检验结果的布尔值
 */
- (BOOL)rg_isHaveKey:(NSString *)key;

/**
 将某个 key - Object 值存入 UserDefaults 中

 @param object 将要存入的 object
 @param key 将要存入的 key
 */
- (void)rg_saveObject:(id)object
               forKey:(NSString *)key;

/**
 将某个 key - Integer 值存入 UserDefaults 中

 @param value 将要存入的 Integer 值
 @param key 将要存入的 key
 */
- (void)rg_saveInteger:(NSInteger)value
                forKey:(NSString *)key;

/**
 将某个 key - Float 值存入 UserDefaults 中

 @param value 将要存入的 Float 值
 @param key 将要存入的 key
 */
- (void)rg_saveFloat:(float)value
              forKey:(NSString *)key;

/**
 将某个 key - Double 值存入 UserDefaults 中

 @param value 将要存入的 Double 值
 @param key 将要存入的 key
 */
- (void)rg_saveDouble:(double)value
               forKey:(NSString *)key;

/**
 将某个 key - Bool 值存入 UserDefaults 中

 @param value 将要存入的 Bool 值
 @param key 将要存入的 key
 */
- (void)rg_saveBool:(BOOL)value
             forKey:(NSString *)key;

/**
 将某个 key - URL 存入 UserDefaults 中

 @param url 将要存入的 URL
 @param key 将要存入的 key
 */
- (void)rg_saveURL:(NSURL *)url
            forKey:(NSString *)key;

@end
