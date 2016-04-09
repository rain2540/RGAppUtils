//
//  NSObject+RGAppUtility.m
//  RGAppUtility
//
//  Created by RAIN on 16/4/9.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import "NSObject+RGAppUtility.h"

@implementation NSObject (ClearNull)

- (NSString *)rg_withoutNull {
    if (nil == self || [self isKindOfClass:[NSNull class]]) {
        return @"";
    } else if ([self isKindOfClass:[NSNumber class]]) {
        return [NSString stringWithFormat:@"%@", self];
    } else {
        return [NSString stringWithFormat:@"%@", self];
    }
}

@end
