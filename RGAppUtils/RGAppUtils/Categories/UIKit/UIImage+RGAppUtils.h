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
 将图片转换到新的尺寸, 并返回新尺寸的图片对象

 @param newSize 图片新尺寸
 @return 新尺寸的图片对象
 */
- (UIImage *)rg_transToNewSize:(CGSize)newSize;

@end
