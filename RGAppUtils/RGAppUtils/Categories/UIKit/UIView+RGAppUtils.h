//
//  UIView+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, RGLineDirection) {
    RGLineDirectionHorizontal,
    RGLineDirectionVertical,
};

@interface UIView (DrawTools)

/**
 为视图添加边线

 @param width 边线宽度
 @param cornerRadius 边线圆角半径, 若无圆角则设置该值为0
 @param color 边线颜色
 */
- (void)rg_addBorderWithWidth:(CGFloat)width
                 cornerRadius:(CGFloat)cornerRadius
                        color:(UIColor *)color;

/**
 在 view 的指定位置加指定颜色的线

 @param startPoint 起始点坐标
 @param length 长度
 @param width 宽度
 @param color 颜色
 @param direction 方向
 @return 按参数条件添加的线
 */
- (UIView *)rg_drawLineWithStartPoint:(CGPoint)startPoint
                               length:(CGFloat)length
                                width:(CGFloat)width
                                color:(UIColor *)color
                            direction:(RGLineDirection)direction;

@end

@interface UIView (Interaction)

/**
 设置视图交互状态

 @param status 表示交互状态的布尔值
 */
- (void)rg_interactionStatus:(BOOL)status;

@end

@interface UIView (Rect)

#pragma mark Origin
/**
 获取视图左上端点横坐标值

 @return 视图左上端点横坐标值
 */
- (CGFloat)rg_x;

/**
 设置视图左上端点横坐标值

 @param x 视图左上端点横坐标值
 */
- (void)rg_setX:(CGFloat)x;

/**
 获取视图左上端点纵坐标值

 @return 视图左上端点纵坐标值
 */
- (CGFloat)rg_y;

/**
 设置视图左上端点纵坐标值

 @param y 视图左上端点纵坐标值
 */
- (void)rg_setY:(CGFloat)y;

#pragma mark Size
/**
 获取视图宽度

 @return 视图宽度
 */
- (CGFloat)rg_width;

/**
 设置视图宽度

 @param width 视图宽度
 */
- (void)rg_setWidth:(CGFloat)width;

/**
 获取视图高度

 @return 视图高度
 */
- (CGFloat)rg_height;

/**
 设置视图高度

 @param height 视图高度
 */
- (void)rg_setHeight:(CGFloat)height;

/**
 获取视图大小

 @return 视图大小
 */
- (CGSize)rg_size;

/**
 设置视图大小

 @param size 视图大小
 */
- (void)rg_setSize:(CGSize)size;

#pragma mark Center
/**
 获取视图中心横坐标

 @return 视图中心横坐标
 */
- (CGFloat)rg_centerX;

/**
 设置视图中心横坐标

 @param x 视图中心横坐标
 */
- (void)rg_setCenterX:(CGFloat)x;

/**
 获取视图中心纵坐标

 @return 视图中心纵坐标
 */
- (CGFloat)rg_centerY;

/**
 设置视图中心纵坐标

 @param y 视图中心纵坐标
 */
- (void)rg_setCenterY:(CGFloat)y;

#pragma mark Border
/**
 获取视图上边界

 @return 视图上边界
 */
- (CGFloat)rg_top;

/**
 设置视图上边界

 @param top 视图上边界
 */
- (void)rg_setTop:(CGFloat)top;

/**
 获取视图下边界

 @return 视图下边界
 */
- (CGFloat)rg_bottom;

/**
 设置视图下边界

 @param bottom 视图下边界
 */
- (void)rg_setBottom:(CGFloat)bottom;

/**
 获取视图左边界

 @return 视图左边界
 */
- (CGFloat)rg_left;

/**
 设置视图左边界

 @param left 视图左边界
 */
- (void)rg_setLeft:(CGFloat)left;

/**
 获取视图右边界

 @return 视图右边界
 */
- (CGFloat)rg_right;

/**
 设置视图右边界

 @param right 视图右边界
 */
- (void)rg_setRight:(CGFloat)right;

#pragma mark Special Values
/**
 获取视图横坐标最大值

 @return 视图横坐标最大值
 */
- (CGFloat)rg_maxX;

/**
 获取视图纵坐标最大值

 @return 视图纵坐标最大值
 */
- (CGFloat)rg_maxY;

/**
 获取视图中心横坐标值

 @return 视图中心横坐标值
 */
- (CGFloat)rg_midX;

/**
 获取视图中心纵坐标值

 @return 视图中心纵坐标值
 */
- (CGFloat)rg_midY;

/**
 获取视图横坐标最小值

 @return 视图横坐标最小值
 */
- (CGFloat)rg_minX;

/**
 获取视图纵坐标最小值

 @return 视图纵坐标最小值
 */
- (CGFloat)rg_minY;

@end
