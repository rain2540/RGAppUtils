//
//  NSDate+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/16.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "NSDate+RGAppUtils.h"

@implementation NSDate (Timestamp)

- (NSTimeInterval)rg_timestamp {
    return self.timeIntervalSince1970;
}

- (NSString *)rg_stringOfTimestamp {
    return [NSString stringWithFormat:@"%@", @([self rg_timestamp])];
}

+ (NSTimeInterval)rg_timestampForNow {
    return [NSDate date].timeIntervalSince1970;
}

+ (NSString *)rg_stringOfTimestampForNow {
    return [NSString stringWithFormat:@"%@", @([NSDate rg_timestampForNow])];
}

@end

@implementation NSDate (Elements)

- (NSInteger)rg_year {
    NSDateComponents *components = [self rg_components:NSCalendarUnitYear];
    return [components year];
}

- (NSInteger)rg_month {
    NSDateComponents *components = [self rg_components:NSCalendarUnitMonth];
    return [components month];
}

- (NSInteger)rg_day {
    NSDateComponents *components = [self rg_components:NSCalendarUnitDay];
    return [components day];
}

- (NSInteger)rg_hour {
    NSDateComponents *components = [self rg_components:NSCalendarUnitHour];
    return [components hour];
}

- (NSInteger)rg_minute {
    NSDateComponents *components = [self rg_components:NSCalendarUnitMinute];
    return [components minute];
}

- (NSInteger)rg_second {
    NSDateComponents *components = [self rg_components:NSCalendarUnitSecond];
    return [components second];
}

- (NSDateComponents *)rg_components:(NSCalendarUnit)unit {
    NSCalendar *cal = [NSCalendar currentCalendar];
    return [cal components:unit fromDate:self];
}

@end
