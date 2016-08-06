//
//  NSDate+RGAppUtility.m
//  RGAppUtility
//
//  Created by RAIN on 16/5/5.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import "NSDate+RGAppUtility.h"

@implementation NSDate (RGAppUtility)

- (NSTimeInterval)rg_toTimestamp {
    return self.timeIntervalSince1970;
}

//- (NSString *)rg_stringOfTimestamp {
//    return [NSString stringWithFormat:@"%@", @([self rg_toTimestamp])];
//}

//+ (NSTimeInterval)rg_timestampForNow {
//    return [NSDate date].timeIntervalSince1970;
//}
//
//+ (NSString *)rg_stringOfTimestampForNow {
//    return [NSString stringWithFormat:@"%@", @([[self class] rg_timestampForNow])];
//}

@end
