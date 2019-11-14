//
//  NSDictionary+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "NSDictionary+RGAppUtils.h"

@implementation NSDictionary (RGAppUtils)

- (BOOL)rg_isHaveKey:(nonnull NSString *)key {
    return [self objectForKey:key] != nil;
}

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
