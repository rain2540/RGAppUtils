//
//  UIView+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "UIView+RGAppUtils.h"

@implementation UIView (DrawTools)

- (void)rg_addBorderWithWidth:(CGFloat)width
                 cornerRadius:(CGFloat)cornerRadius
                        color:(UIColor *)color
{
    self.layer.masksToBounds = YES;
    self.layer.borderWidth = width;
    self.layer.cornerRadius = cornerRadius;
    self.layer.borderColor = color.CGColor;
}

- (UIView *)rg_drawLineWithStartPoint:(CGPoint)startPoint
                               length:(CGFloat)length
                                width:(CGFloat)width
                                color:(UIColor *)color
                            direction:(RGLineDirection)direction
{
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = color;

    switch (direction) {
        case RGLineDirectionHorizontal:
            line.frame = CGRectMake(startPoint.x, startPoint.y, length, width);
            break;

        case RGLineDirectionVertical:
            line.frame = CGRectMake(startPoint.x, startPoint.y, width, length);
            break;
    }
    [self addSubview:line];
    return line;
}

@end

@implementation UIView (Interaction)

- (void)rg_interactionStatus:(BOOL)status {
    self.userInteractionEnabled = status;
    self.multipleTouchEnabled = status;
}

@end

@implementation UIView (Rect)

#pragma mark Origin
- (CGFloat)rg_x {
    return self.frame.origin.x;
}

- (void)rg_setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)rg_y {
    return self.frame.origin.y;
}

- (void)rg_setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

#pragma mark Size
- (CGFloat)rg_width {
    return CGRectGetWidth(self.frame);
}

- (void)rg_setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)rg_height {
    return CGRectGetHeight(self.frame);
}

- (void)rg_setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGSize)rg_size {
    return self.frame.size;
}

- (void)rg_setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

#pragma mark Center
- (CGFloat)rg_centerX {
    return self.center.x;
}

- (void)rg_setCenterX:(CGFloat)x {
    CGPoint center = self.center;
    center.x = x;
    self.center = center;
}

- (CGFloat)rg_centerY {
    return self.center.y;
}

- (void)rg_setCenterY:(CGFloat)y {
    CGPoint center = self.center;
    center.y = y;
    self.center = center;
}

#pragma mark Border
- (CGFloat)rg_top {
    return [self rg_y];
}

- (void)rg_setTop:(CGFloat)top {
    [self rg_setY:top];
}

- (CGFloat)rg_bottom {
    return [self rg_y] + [self rg_height];
}

- (void)rg_setBottom:(CGFloat)bottom {
    [self rg_setY:(bottom - [self rg_height])];
}

- (CGFloat)rg_left {
    return [self rg_x];
}

- (void)rg_setLeft:(CGFloat)left {
    [self rg_setX:left];
}

- (CGFloat)rg_right {
    return [self rg_x] + [self rg_width];
}

- (void)rg_setRight:(CGFloat)right {
    [self rg_setX:(right - [self rg_width])];
}

#pragma mark Special Values
- (CGFloat)rg_maxX {
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)rg_maxY {
    return CGRectGetMaxY(self.frame);
}

- (CGFloat)rg_midX {
    return CGRectGetMidX(self.frame);
}

- (CGFloat)rg_midY {
    return CGRectGetMidY(self.frame);
}

- (CGFloat)rg_minX {
    return CGRectGetMinX(self.frame);
}

- (CGFloat)rg_minY {
    return CGRectGetMinY(self.frame);
}

@end
