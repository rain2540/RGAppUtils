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

+ (NSString *)rg_convertFromJSONObject:(id)obj;

@end


@interface NSString (Pinyin)

/**
 将汉字转化为拼音

 @param phonogram 是否显示声调
 @param uppercase 是否大写
 @return 转换后的拼音字符串
 */
- (NSString *)transToPinyinWithPhonogram:(BOOL)phonogram
                               uppercase:(BOOL)uppercase;

@end
