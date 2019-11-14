//
//  NSDictionary+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "NSDictionary+RGAppUtils.h"
#import "NSObject+RGAppUtils.h"

@implementation NSDictionary (RGAppUtils)

#pragma mark Convenience initializer

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


#pragma mark - Puclic

- (BOOL)rg_isHaveKey:(nonnull NSString *)key {
    return [self objectForKey:key] != nil;
}

- (nullable id)rg_valueForKey:(nonnull NSString *)key {
    id value;
    for (NSString *keyName in self.allKeys) {
        if ([keyName isEqualToString:key]) {
            // 如果找到了相应的key，递归就可以结束了
            value = self[keyName];
            break;
        } else {
            id tempObj = self[keyName];
            if ([tempObj isKindOfClass:[NSDictionary class]]) {
                // 如果是字典, 递归, 遍历下一层
                if ([value rg_withoutNull].length > 0) {
                    return value;
                } else {
                    value = [tempObj rg_valueForKey:key];
                }
            } else if ([tempObj isKindOfClass:[NSArray class]]) {
                // 如果是数组，只取第0个数据，并且传值递归
                if ([tempObj count] >= 1) {
                    for (NSInteger i = 0; i < [tempObj count]; i++) {
                        if ([value rg_withoutNull].length > 0) {
                            return value;
                        } else {
                            value = [tempObj[i] rg_valueForKey:key];
                        }
                    }
                }
            }
        }
    }
    return value;
}

@end
