//
//  RGMainScreen.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/16.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "RGMainScreen.h"

@implementation RGMainScreen

+ (CGFloat)width {
    return [RGMainScreen size].width;
}

+ (CGFloat)height {
    return [RGMainScreen size].height;
}

+ (CGSize)size {
    return [RGMainScreen bounds].size;
}

+ (CGRect)bounds {
    return [RGMainScreen mainScreen].bounds;
}

@end
