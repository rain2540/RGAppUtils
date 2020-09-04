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
 返回为 keyword 着色的 attributed string

 @param keyword 需要着色的关键词
 @param color keyword 的颜色
 @return 完成 keyword 着色的 attributed string
 */
- (NSMutableAttributedString *)rg_attributedStringWithKeyword:(NSString *)keyword
                                                 keywordColor:(UIColor *)color;

/**
 返回为 keyword 设定颜色、字体的 attributed string

 @param keyword 关键词
 @param color keyword 的颜色
 @param font keyword 的字体
 @return 完成 keyword 颜色、字体设定的 attributed string
 */
- (NSMutableAttributedString *)rg_attributedStringWithKeyword:(NSString *)keyword
                                                 keywordColor:(UIColor *)color
                                                  keywordFont:(UIFont *)font;

/**
 转换为 JSON 对象

 @return JSON 对象
 */
- (id)rg_toObject;

/**
 JSON 对象转换为字符串

 @param obj JSON 对象
 @return 转换后的字符串
 */
+ (NSString *)rg_convertFromJSONObject:(id)obj;

@end


@interface NSString (Pinyin)

/**
 将汉字转化为拼音

 @param phonogram 是否显示声调
 @param uppercase 是否大写
 @return 转换后的拼音字符串
 */
- (NSString *)rg_transToPinyinWithPhonogram:(BOOL)phonogram
                                  uppercase:(BOOL)uppercase;

@end
