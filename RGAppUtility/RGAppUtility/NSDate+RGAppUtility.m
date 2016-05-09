//
//  NSDate+RGAppUtility.m
//  RGAppUtility
//
//  Created by RAIN on 16/5/5.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import "NSDate+RGAppUtility.h"

@implementation NSDate (RGAppUtility)

- (NSString *)rg_toTimestamp {
    return [NSString stringWithFormat:@"%@", @([self timeIntervalSince1970])];
}

@end
