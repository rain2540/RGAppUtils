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


@implementation NSDate (Trans)

+ (NSDate *)rg_dateFromString:(NSString *)dateString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    //        [dateFormatter setDateFormat: @"yyyy-MM-dd HH:mm:ss"];
    NSDate *destDate = [dateFormatter dateFromString:dateString];
    return destDate;
}

- (NSString *)rg_dateString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //zzz表示时区，zzz可以删除，这样返回的日期字符将不包含时区信息。
    //    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *destDateString = [dateFormatter stringFromDate:self];
    return destDateString;
}

+ (NSString *)rg_secondFormatTime:(NSInteger)totalSecond
                          hasHour:(BOOL)hasHour
{
    NSInteger seconds = totalSecond % 60;
    NSInteger minutes = (totalSecond / 60) % 60;
    NSInteger hours = totalSecond / 3600;
    NSString *result;
    if (hasHour) {
        result = [NSString stringWithFormat:@"%02ld:%02ld:%02ld",(long)hours,(long)minutes,(long)seconds];
    } else {
        result = [NSString stringWithFormat:@"%02ld:%02ld",(long)minutes,(long)seconds];
    }
    return result;
}

@end


@implementation NSDate (Tools)

- (NSDate *)rg_oneYearLater {
    NSInteger yearValue = [self rg_year];
    NSInteger nextYearValue = yearValue + 1;

    BOOL isLeapYear = (yearValue % 400 == 0)  || ((yearValue % 400 != 0) && (yearValue % 4 == 0));
    BOOL nextYearIsLeap = (nextYearValue % 400 == 0) || ((nextYearValue % 400 != 0) && (nextYearValue % 4 == 0));

    NSInteger monthValue = [self rg_month];
    // 闰区间：如果下一年是闰年，那么今年 3 月 1 日到下一年 2 月 29 日之间的日子，就是闰区间
    BOOL isLeapRange = (nextYearIsLeap && monthValue >= 3) || (isLeapYear && monthValue < 3);
    NSTimeInterval startTimestamp = [self rg_timestamp];
    // 开始日期在闰区间内，加 (366 - 1) 天，否则加 (365 - 1)天
    NSTimeInterval oneYearLaterTimestamp = startTimestamp + (isLeapRange ? (366 - 1) : (365 - 1)) * 60 * 60 * 24;
    NSDate *oneYearLater = [NSDate dateWithTimeIntervalSince1970:oneYearLaterTimestamp];
    return oneYearLater;
}

@end
