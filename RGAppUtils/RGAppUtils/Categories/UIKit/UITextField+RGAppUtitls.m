//
//  UITextField+RGAppUtitls.m
//  RGAppUtils
//
//  Created by RAIN on 2019/2/25.
//  Copyright © 2019 Smartech. All rights reserved.
//

#import "UITextField+RGAppUtitls.h"

@implementation UITextField (RGAppUtitls)


#pragma mark - Private
- (UIImageView *)createImageViewByName:(NSString *)name
                                 frame:(CGRect)frame
                           contentMode:(UIViewContentMode)contentMode
{
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:name];
    imageView.frame = frame;
    imageView.contentMode = contentMode;
    return imageView;
}

@end
