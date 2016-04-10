//
//  NSUserDefaults+RGUtility.h
//  RGAppUtility
//
//  Created by RAIN on 16/4/10.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (RGUtility)

- (BOOL)rg_isHaveKey:(nonnull NSString *)key;

- (void)rg_saveObject:(nullable id)object
               forKey:(nonnull NSString *)key;

@end
