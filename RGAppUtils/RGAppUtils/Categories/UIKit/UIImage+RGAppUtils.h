//
//  UIImage+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (RGAppUtils)

/**
 获取 Image 对应的 Data

 @return Image 对应的 Data
 */
- (NSData *)rg_data;

/**
 获取 Image 对应的 Base64 String

 @return Image 对应的 Base64 String
 */
- (NSString *)rg_base64String;

/**
 创建矩形图像

 @param size 尺寸
 @param backColor 背景色
 @param borderColor 边线颜色
 @param borderWidth 边线宽度
 @return 新创建的矩形图像
 */
- (UIImage *)rg_createRectImageWithSize:(CGSize)size
                              backColor:(UIColor *)backColor
                            borderColor:(UIColor *)borderColor
                            borderWidth:(CGFloat)borderWidth;

/**
 创建圆角图像

 @param size 尺寸
 @param backColor 背景色
 @param borderColor 边线颜色
 @param borderWidth 边线宽度
 @return 新创建的圆角图像
 */
- (UIImage *)rg_createCircleImageWithSize:(CGSize)size
                                backColor:(UIColor *)backColor
                              borderColor:(UIColor *)borderColor
                              borderWidth:(CGFloat)borderWidth;

/**
 创建圆角矩形图像

 @param size 尺寸
 @param cornerRadius 圆角半径
 @param backColor 背景色
 @param borderColor 边线颜色
 @param borderWidth 边线宽度
 @return 新创建的圆角矩形图像
 */
- (UIImage *)rg_createRoundRectImageWithSize:(CGSize)size
                                cornerRadius:(CGFloat)cornerRadius
                                   backColor:(UIColor *)backColor
                                 borderColor:(UIColor *)borderColor
                                 borderWidth:(CGFloat)borderWidth;

@end
