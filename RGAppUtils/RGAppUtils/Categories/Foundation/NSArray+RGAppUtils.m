//
//  NSArray+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2020/10/16.
//  Copyright © 2020 Smartech. All rights reserved.
//

#import "NSArray+RGAppUtils.h"

@implementation NSArray (RGAppUtils)

- (id)rg_objectAtIndex:(NSInteger)index {
    if (index >= 0) {
        return [self objectAtIndex:index];
    } else {
        return [self objectAtIndex:self.count + index];
    }
}

- (BOOL)rg_isEmpty {
    return self.count <= 0;
}

- (NSArray *)rg_map:(id(^)(id obj))map {
    NSMutableArray *array = [NSMutableArray array];
    for (id item in self) {
        if (map) {
            id newItem = map(item);
            [array addObject:newItem];
        }
    }
    return [array copy];
}

- (NSArray *)rg_filter:(BOOL(^)(id obj))filter {
    NSMutableArray *array = [NSMutableArray array];
    for (id item in self) {
        if (filter) {
            BOOL isFit = filter(item);
            if (isFit) {
                [array addObject:item];
            }
        }
    }
    return [array copy];
}

@end
