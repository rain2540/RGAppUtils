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

- (UIImage *)rg_createRectImageWithSize:(CGSize)size
                              backColor:(UIColor *)backColor
                            borderColor:(UIColor *)borderColor
                            borderWidth:(CGFloat)borderWidth
{
    // 依据新图片的大小创建绘制区域
    CGRect rect = CGRectMake(0, 0, size.width, size.height);

    // 1.图像的上下文 - 内存中开辟一个地址, 跟屏幕无关
    /**
     * 1> size:   绘图的尺寸
     * 2> opaque: 不透明:false(透明) / true(不透明)
     * 3> scale:  屏幕分辨率,默认情况下生成的图像使用'1.0'的分辨率,图像质量不好
     *            可以指定'0',会选择当前设备的屏幕分辨率
     */
    UIGraphicsBeginImageContextWithOptions(rect.size, YES, 0);

    // 2.背景填充(在裁切之前做填充)
    [backColor setFill];
    UIRectFill(rect);

    // 3.绘图'drawInRect'就是在指定区域内重绘图片
    [self drawInRect:rect];

    // 4.绘制边线
    // 4.1 按照新尺寸的图片边界实例化一个路径
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:rect];
    // 4.2 设置边线颜色
    [borderColor setStroke];
    // 4.3 设置边线宽度
    path.lineWidth = borderWidth;
    // 4.4 绘制边线
    [path stroke];

    // 5.取得结果
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();

    // 6.关闭上下文
    UIGraphicsEndImageContext();

    // 7.返回结果
    return result;
}

- (UIImage *)rg_createCircleImageWithSize:(CGSize)size
                                backColor:(UIColor *)backColor
                              borderColor:(UIColor *)borderColor
                              borderWidth:(CGFloat)borderWidth
{
    // 依据新图片的大小创建绘制区域
    CGRect rect = CGRectMake(0, 0, size.width, size.height);

    // 1.图像的上下文 - 内存中开辟一个地址, 跟屏幕无关
    /**
     * 1> size:   绘图的尺寸
     * 2> opaque: 不透明:false(透明) / true(不透明)
     * 3> scale:  屏幕分辨率,默认情况下生成的图像使用'1.0'的分辨率,图像质量不好
     *            可以指定'0',会选择当前设备的屏幕分辨率
     */
    UIGraphicsBeginImageContextWithOptions(rect.size, YES, 0);

    // 2.背景填充(在裁切之前做填充)
    [backColor setFill];
    UIRectFill(rect);

    // 实例化一个圆形的路径
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    // 进行路径裁切 - 后续的绘图, 都会出现在圆形路径内部, 外部的全部裁切掉
    [path addClip];

    // 3.绘图'drawInRect'就是在指定区域内重绘图片
    [self drawInRect:rect];

    // 4.绘制内切的圆形
    // 4.1 设置边线颜色
    [borderColor setStroke];
    // 4.2 设置边线宽度
    path.lineWidth = borderWidth;
    // 4.3 绘制边线
    [path stroke];

    // 5.取得结果
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();

    // 6.关闭上下文
    UIGraphicsEndImageContext();

    // 7.返回结果
    return result;
}

- (UIImage *)rg_createRoundRectImageWithSize:(CGSize)size
                                cornerRadius:(CGFloat)cornerRadius
                                   backColor:(UIColor *)backColor
                                 borderColor:(UIColor *)borderColor
                                 borderWidth:(CGFloat)borderWidth
{
    // 依据新图片的大小创建绘制区域
    CGRect rect = CGRectMake(0, 0, size.width, size.height);

    // 1.图像的上下文 - 内存中开辟一个地址, 跟屏幕无关
    /**
     * 1> size:   绘图的尺寸
     * 2> opaque: 不透明:false(透明) / true(不透明)
     * 3> scale:  屏幕分辨率,默认情况下生成的图像使用'1.0'的分辨率,图像质量不好
     *            可以指定'0',会选择当前设备的屏幕分辨率
     */
    UIGraphicsBeginImageContextWithOptions(rect.size, YES, 0);

    // 2.背景填充(在裁切之前做填充)
    [backColor setFill];
    UIRectFill(rect);

    // 实例化一个圆角矩形的路径
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    // 进行路径裁切 - 后续的绘图, 都会出现在圆角矩形路径内部, 外部的全部裁切掉
    [path addClip];

    // 3.绘图'drawInRect'就是在指定区域内重绘图片
    [self drawInRect:rect];

    // 4.绘制边线
    // 4.1 设置边线颜色
    [borderColor setStroke];
    // 4.2 设置边线宽度
    path.lineWidth = borderWidth;
    // 4.3 绘制边线
    [path stroke];

    // 5.取得结果
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();

    // 6.关闭上下文
    UIGraphicsEndImageContext();

    // 7.返回结果
    return result;
}

@end
