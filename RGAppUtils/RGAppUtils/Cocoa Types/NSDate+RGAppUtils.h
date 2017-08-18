//
//  NSDate+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/16.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Elements)

/**
 获取 Date 对象中的元素 年

 @return NSInteger 类型的 年 值
 */
- (NSInteger)rg_year;

/**
 获取 Date 对象中的元素 月

 @return NSInteger 类型的 月 值
 */
- (NSInteger)rg_month;

/**
 获取 Date 对象中的元素 日

 @return NSInteger 类型的 日 值
 */
- (NSInteger)rg_day;

/**
 获取 Date 对象中的元素 小时

 @return NSInteger 类型的 小时 值
 */
- (NSInteger)rg_hour;

/**
 获取 Date 对象中的元素 分钟

 @return NSInteger 类型的 分钟 值
 */
- (NSInteger)rg_minute;

/**
 获取 Date 对象中的元素 秒

 @return NSInteger 类型的 秒 值
 */
- (NSInteger)rg_second;

@end
