//
//  UIColor+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "UIColor+RGAppUtils.h"

@implementation UIColor (RGAppUtils)

- (UIColor *)rg_initWithRed:(CGFloat)red
                      green:(CGFloat)green
                       blue:(CGFloat)blue
                      alpha:(CGFloat)alpha
{
    return [self initWithRed:red / 255.0
                       green:green / 255.0
                        blue:blue / 255.0
                       alpha:alpha];
}

+ (UIColor *)rg_colorWithRed:(CGFloat)red
                       green:(CGFloat)green
                        blue:(CGFloat)blue
                       alpha:(CGFloat)alpha
{
    return [[UIColor alloc] rg_initWithRed:red
                                     green:green
                                      blue:blue
                                     alpha:alpha];
}

- (UIColor *)rg_initWithHexString:(NSString *)hexString
                            alpha:(CGFloat)alpha
{
    CGFloat red = 0.0f, green = 0.0f, blue = 0.0f;
    if (nil != hexString) {
        hexString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
        if (!([hexString hasPrefix:@"0X"] || [hexString hasPrefix:@"#"])) {
            NSLog(@"Invalid RGB hex string, missing '#' or '0x' as prefix.");
        } else {

            if ([hexString hasPrefix:@"0X"]) {
                hexString = [hexString substringFromIndex:2];
            } else if ([hexString hasPrefix:@"#"]) {
                hexString = [hexString substringFromIndex:1];
            }
            NSScanner *scanner = [NSScanner scannerWithString:hexString];
            unsigned long long hexValue = 0;
            if (![scanner scanHexLongLong:&hexValue]) {
                NSLog(@"Scan hex error.");
            } else {
                switch (hexString.length) {
                    case 3:
                        red   = ((hexValue & 0xF00) >> 8) / 15.0f;
                        green = ((hexValue & 0x0F0) >> 4) / 15.0f;
                        blue  = (hexValue  & 0x00F)       / 15.0f;
                        break;

                    case 6:
                        red   = ((hexValue & 0xFF0000) >> 16) / 255.0f;
                        green = ((hexValue & 0x00FF00) >> 8)  / 255.0f;
                        blue  = (hexValue  & 0x0000FF)        / 255.0f;
                        break;

                    default:
                        NSLog(@"Invalid RGB hex string, number of characters after '#' or '0x' should be either 3 or 6.");
                        break;
                }
            }
        }
    }
    return [self initWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *)rg_colorWithHexString:(NSString *)hexString
                             alpha:(CGFloat)alpha
{
    return [[UIColor alloc] rg_initWithHexString:hexString alpha:alpha];
}

@end
