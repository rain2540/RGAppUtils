//
//  UIImage+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "UIImage+RGAppUtils.h"

@implementation UIImage (RGAppUtils)

- (NSData *)rg_data {
    NSData *jpegData = UIImageJPEGRepresentation(self, 1.0);
    if (jpegData != nil) {
        return jpegData;
    } else {
        NSData *pngData = UIImagePNGRepresentation(self);
        if (pngData != nil) {
            return pngData;
        } else {
            return nil;
        }
    }
}

- (NSString *)rg_base64String {
    NSData *data = [self rg_data];
    if (data == nil) {
        return nil;
    } else {
        return [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    }
}

- (UIImage *)rg_transToNewSize:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    [self drawInRect:CGRectMake(0.0, 0.0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    if (newImage == nil) {
        UIGraphicsEndImageContext();
        return nil;
    } else {
        UIGraphicsEndImageContext();
        return newImage;
    }
}

@end
