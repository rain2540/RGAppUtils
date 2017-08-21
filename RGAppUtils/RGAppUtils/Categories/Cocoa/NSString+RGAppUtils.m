//
//  NSString+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/21.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "NSString+RGAppUtils.h"

@implementation NSString (RGAppUtils)

- (NSData *)rg_base64Data {
    return [[NSData alloc] initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters];
}

- (UIImage *)rg_base64Image {
    NSData *data = [self rg_base64Data];
    if (data == nil) {
        return nil;
    } else {
        return [UIImage imageWithData:data];
    }
}

- (id)rg_toObject {
    NSString *string = [self stringByReplacingOccurrencesOfString:@"\0" withString:@""];
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    id obj = [NSJSONSerialization JSONObjectWithData:data
                                             options:NSJSONReadingMutableContainers
                                               error:&error];
    NSLog(@"RGAppUtils NSString to object Error:\n%@", error);
    return obj;
}

@end
