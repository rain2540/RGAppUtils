//
//  NSUserDefaults+RGUtility.m
//  RGAppUtility
//
//  Created by RAIN on 16/4/10.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import "NSUserDefaults+RGUtility.h"

@implementation NSUserDefaults (RGUtility)

- (BOOL)rg_isHaveKey:(nonnull NSString *)key {
    
    NSDictionary *userDefaultDic = self.dictionaryRepresentation;
    NSArray *keys = userDefaultDic.allKeys;
    for (NSInteger i = 0; i < keys.count; i++) {
        NSString *aKey = keys[i];
        if ([key isEqualToString:aKey]) {
            return YES;
        }
    }
    return NO;
}

- (void)rg_saveObject:(nullable id)object
               forKey:(nonnull NSString *)key
{
    [self setObject:object forKey:key];
    [self synchronize];
}

- (void)rg_saveBool:(BOOL)value
             forKey:(nonnull NSString *)key
{
    [self setBool:value forKey:key];
    [self synchronize];
}

- (void)rg_saveDouble:(double)value
               forKey:(NSString *)key
{
    [self setDouble:value forKey:key];
    [self synchronize];
}

@end
