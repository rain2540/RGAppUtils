//
//  NSDate+RGAppUtility.h
//  RGAppUtility
//
//  Created by RAIN on 16/5/5.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (RGAppUtility)

/**
 *  返回某个时间对应的时间戳
 *
 *  @return 某个时间对应的时间戳
 */
- (NSTimeInterval)rg_toTimestamp;

/**
 *  返回描述某个时间对应的时间戳的字符串
 *
 *  @return 描述某个时间对应的时间戳的字符串
 */
- (NSString *)rg_stringOfTimestamp;

+ (NSTimeInterval)rg_timestampForNow;

+ (NSString *)rg_stringOfTimestampForNow;

@end
