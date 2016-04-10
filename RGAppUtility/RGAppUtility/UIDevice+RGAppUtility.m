//
//  UIDevice+RGAppUtility.m
//  RGAppUtility
//
//  Created by RAIN on 16/4/10.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import "UIDevice+RGAppUtility.h"

@implementation UIDevice (RGAppUtility)

+ (void)rg_deviceInformations {
    NSLog(@"currentDevice: %@", [UIDevice currentDevice]);
    
    UIDevice *device = [[UIDevice alloc] init];
    NSLog(@"device.name: %@", device.name);
    NSLog(@"device.model:%@", device.model);
    NSLog(@"device.localizedModel: %@", device.localizedModel);
    
    NSLog(@"device.systemName: %@", device.systemName);
    NSLog(@"device.systemVersion: %@", device.systemVersion);
    
    NSLog(@"device.identifierForVendor: %@", device.identifierForVendor);
}

@end
