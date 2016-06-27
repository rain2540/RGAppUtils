//
//  NSObject+RGAppUtility.m
//  RGAppUtility
//
//  Created by RAIN on 16/4/9.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import "NSObject+RGAppUtility.h"

@implementation NSObject (ClearNull)

- (nonnull NSString *)rg_withoutNull {
    if (nil == self || [self isKindOfClass:[NSNull class]]) {
        return @"";
    } else if ([self isKindOfClass:[NSNumber class]]) {
        return [NSString stringWithFormat:@"%@", self];
    } else {
        return [NSString stringWithFormat:@"%@", self];
    }
}

@end

@implementation NSObject (Trans)

+ (NSString *)rg_objectToJSONString {
    NSError *error;
    NSData *data = [NSJSONSerialization dataWithJSONObject:self
                                                   options:NSJSONWritingPrettyPrinted
                                                     error:&error];
    NSLog(@"RGAppUtility NSObject to JSON string Error:\n%@", error);
    
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
