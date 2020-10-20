//
//  NSArray+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2020/10/16.
//  Copyright © 2020 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (RGAppUtils)

- (id)rg_objectAtIndex:(NSInteger)index;

/// 判断数组是否为空
- (BOOL)rg_isEmpty;

- (NSArray *)rg_map:(id(^)(id obj))map;

- (NSArray *)rg_filter:(BOOL(^)(id obj))filter;

- (NSString *(^)(NSString *separator))rg_joinedByString;

@end

NS_ASSUME_NONNULL_END
