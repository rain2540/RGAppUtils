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

@end
