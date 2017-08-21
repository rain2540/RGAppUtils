//
//  NSString+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/21.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (RGAppUtils)

/**
 获取 String 对应的 Base64 Data

 @return String 对应的 Base64 Data
 */
- (NSData *)rg_base64Data;

/**
 获取 String 对应的 Base64 Image

 @return String 对应的 Base64 Image
 */
- (UIImage *)rg_base64Image;

/**
 转换为 JSON 对象

 @return JSON 对象
 */
- (id)rg_toObject;

@end
