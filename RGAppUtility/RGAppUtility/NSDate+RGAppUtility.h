//
//  NSDate+RGAppUtility.h
//  RGAppUtility
//
//  Created by RAIN on 16/5/5.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (RGAppUtility)

- (NSTimeInterval)rg_toTimestamp;

- (NSString *)rg_stringOfTimestamp;

//+ (NSTimeInterval)rg_timestampForNow;

//+ (NSString *)rg_stringOfTimestampForNow;

@end
