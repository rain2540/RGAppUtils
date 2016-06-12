//
//  NSDictionary+RGAppUtility.m
//  RGAppUtility
//
//  Created by RAIN on 16/4/10.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import "NSDictionary+RGAppUtility.h"

@implementation NSDictionary (MainBundle)

- (nullable instancetype)rg_initWithMainBundlePathForResource:(nullable NSString *)name
                                                       ofType:(nullable NSString *)ext
{
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:ext];
    return [self initWithContentsOfFile:path];
}

+ (nullable NSDictionary *)rg_dictionaryWithMainBundlePathForResource:(nullable NSString *)name
                                                               ofType:(nullable NSString *)ext
{
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:ext];
    return [NSDictionary dictionaryWithContentsOfFile:path];
}

@end

@implementation NSDictionary (KeyExist)

- (BOOL)rg_isHaveKey:(nonnull NSString *)key {
    NSArray *keys = self.allKeys;
    for (NSString *aKey in keys) {
        
        if ([key isEqualToString:aKey]) {
            return YES;
        }
    }
    return NO;
}

@end
