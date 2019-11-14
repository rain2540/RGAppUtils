//
//  NSObject+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "NSObject+RGAppUtils.h"

@implementation NSObject (RGAppUtils)

- (nonnull NSString *)rg_withoutNull {
    if (self == nil || [self isKindOfClass:[NSNull class]]) {
        return @"";
    } else if ([self isKindOfClass:[NSNumber class]]) {
        return [NSString stringWithFormat:@"%@", self];
    } else {
        return [NSString stringWithFormat:@"%@", self];
    }
}

- (NSString *)rg_objectToJSONString {
    NSError *error;
    NSData *data = [NSJSONSerialization dataWithJSONObject:self
                                                   options:NSJSONWritingPrettyPrinted
                                                     error:&error];
    NSLog(@"RGAppUtils NSObject to JSON string Error:\n%@", error);

    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
