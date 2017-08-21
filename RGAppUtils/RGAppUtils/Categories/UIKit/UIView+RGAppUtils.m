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
