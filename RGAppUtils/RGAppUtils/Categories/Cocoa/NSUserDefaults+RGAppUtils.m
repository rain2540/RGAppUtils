//
//  NSUserDefaults+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "NSUserDefaults+RGAppUtils.h"

@implementation NSUserDefaults (RGAppUtils)

- (BOOL)rg_isHaveKey:(NSString *)key {
    NSDictionary *userDefaultsDic = self.dictionaryRepresentation;
    NSArray *keys = userDefaultsDic.allKeys;
    for (NSString *aKey in keys) {
        if ([key isEqualToString:aKey]) {
            return YES;
        }
    }
    return NO;
}

- (void)rg_saveObject:(id)object
               forKey:(NSString *)key
{
    [self setObject:object forKey:key];
    [self synchronize];
}

- (void)rg_saveInteger:(NSInteger)value
                forKey:(NSString *)key
{
    [self setInteger:value forKey:key];
    [self synchronize];
}

- (void)rg_saveFloat:(float)value
              forKey:(NSString *)key
{
    [self setFloat:value forKey:key];
    [self synchronize];
}

- (void)rg_saveDouble:(double)value
               forKey:(NSString *)key
{
    [self setDouble:value forKey:key];
    [self synchronize];
}

- (void)rg_saveBool:(BOOL)value
             forKey:(NSString *)key
{
    [self setBool:value forKey:key];
    [self synchronize];
}

- (void)rg_saveURL:(NSURL *)url
            forKey:(NSString *)key
{
    [self setURL:url forKey:key];
    [self synchronize];
}

@end
