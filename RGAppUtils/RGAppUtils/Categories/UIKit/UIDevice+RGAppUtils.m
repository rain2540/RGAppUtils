//
//  UIDevice+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "UIDevice+RGAppUtils.h"
#import <sys/utsname.h>

@implementation UIDevice (RGAppUtils)

+ (void)rg_printDeviceInformations {
    NSLog(@"currentDevice: %@", [UIDevice currentDevice]);

    UIDevice *device = [[UIDevice alloc] init];
    NSLog(@"device.name: %@", device.name);
    NSLog(@"device.model:%@", device.model);
    NSLog(@"device.localizedModel: %@", device.localizedModel);

    NSLog(@"device.systemName: %@", device.systemName);
    NSLog(@"device.systemVersion: %@", device.systemVersion);

    NSLog(@"device.identifierForVendor: %@", device.identifierForVendor);
}

+ (BOOL)rg_systemVersionGreaterThanOrEqualTo:(NSString *)version {
    return [[[UIDevice currentDevice] systemVersion] compare:version options:NSNumericSearch] != NSOrderedAscending;
}

+ (NSString *)rg_stringOfDeviceTime {
    NSDate *deviceTime = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd-HH-mm-ss"];
    return [dateFormatter stringFromDate:deviceTime];
}

+ (DeviceType)rg_deviceType {
    struct utsname systemInfo;

    uname(&systemInfo);

    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSASCIIStringEncoding];

    if ([platform isEqualToString:@"iPhone1,1"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 2G");
        return DeviceType_iPhone_2G;
    }

    if ([platform isEqualToString:@"iPhone1,2"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 3G");
        return DeviceType_iPhone_3G;
    }

    if ([platform isEqualToString:@"iPhone2,1"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 3GS");
        return DeviceType_iPhone_3GS;
    }

    if ([platform isEqualToString:@"iPhone3,1"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 4");
        return DeviceType_iPhone_4;
    }

    if ([platform isEqualToString:@"iPhone3,2"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 4");
        return DeviceType_iPhone_4;
    }

    if ([platform isEqualToString:@"iPhone3,3"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 4");
        return DeviceType_iPhone_4;
    }

    if ([platform isEqualToString:@"iPhone4,1"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 4S");
        return DeviceType_iPhone_4S;
    }

    if ([platform isEqualToString:@"iPhone5,1"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 5");
        return DeviceType_iPhone_5;
    }

    if ([platform isEqualToString:@"iPhone5,2"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 5");
        return DeviceType_iPhone_5;
    }

    if ([platform isEqualToString:@"iPhone5,3"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 5c");
        return DeviceType_iPhone_5c;
    }

    if ([platform isEqualToString:@"iPhone5,4"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 5c");
        return DeviceType_iPhone_5c;
    }

    if ([platform isEqualToString:@"iPhone6,1"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 5s");
        return DeviceType_iPhone_5s;
    }

    if ([platform isEqualToString:@"iPhone6,2"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 5s");
        return DeviceType_iPhone_5s;
    }

    if ([platform isEqualToString:@"iPhone7,1"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 6 Plus");
        return DeviceType_iPhone_6_Plus;
    }

    if ([platform isEqualToString:@"iPhone7,2"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 6");
        return DeviceType_iPhone_6;
    }

    if ([platform isEqualToString:@"iPhone8,1"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 6s");
        return DeviceType_iPhone_6s;
    }

    if ([platform isEqualToString:@"iPhone8,2"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 6s Plus");
        return DeviceType_iPhone_6s_Plus;
    }

    if ([platform isEqualToString:@"iPhone8,4"]) {
        NSLog(@"RGAppUtils Device Type: iPhone SE");
        return DeviceType_iPhone_SE;
    }

    if ([platform isEqualToString:@"iPhone9,1"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 7");
        return DeviceType_iPhone_7;
    }

    if ([platform isEqualToString:@"iPhone9,2"]) {
        NSLog(@"RGAppUtils Device Type: iPhone 7 Plus");
        return DeviceType_iPhone_7_Plus;
    }

    if ([platform isEqualToString:@"iPod1,1"]) {
        NSLog(@"RGAppUtils Device Type: iPod Touch 1G");
        return DeviceType_iPod_Touch_1;
    }

    if ([platform isEqualToString:@"iPod2,1"]) {
        NSLog(@"RGAppUtils Device Type: iPod Touch 2G");
        return DeviceType_iPod_Touch_2;
    }

    if ([platform isEqualToString:@"iPod3,1"]) {
        NSLog(@"RGAppUtils Device Type: iPod Touch 3G");
        return DeviceType_iPod_Touch_3;
    }

    if ([platform isEqualToString:@"iPod4,1"]) {
        NSLog(@"RGAppUtils Device Type: iPod Touch 4G");
        return DeviceType_iPod_Touch_4;
    }

    if ([platform isEqualToString:@"iPod5,1"]) {
        NSLog(@"RGAppUtils Device Type: iPod Touch 5G");
        return DeviceType_iPod_Touch_5;
    }

    if ([platform isEqualToString:@"iPod7,1"]) {
        NSLog(@"RGAppUtils Device Type: iPod Touch 6");
        return DeviceType_iPod_Touch_6;
    }

    if ([platform isEqualToString:@"iPad1,1"]) {
        NSLog(@"RGAppUtils Device Type: iPad 1G");
        return DeviceType_iPad_1;
    }

    if ([platform isEqualToString:@"iPad2,1"]) {
        NSLog(@"RGAppUtils Device Type: iPad 2");
        return DeviceType_iPad_2;
    }

    if ([platform isEqualToString:@"iPad2,2"]) {
        NSLog(@"RGAppUtils Device Type: iPad 2");
        return DeviceType_iPad_2;
    }

    if ([platform isEqualToString:@"iPad2,3"]) {
        NSLog(@"RGAppUtils Device Type: iPad 2");
        return DeviceType_iPad_2;
    }

    if ([platform isEqualToString:@"iPad2,4"]) {
        NSLog(@"RGAppUtils Device Type: iPad 2");
        return DeviceType_iPad_2;
    }

    if ([platform isEqualToString:@"iPad2,5"]) {
        NSLog(@"RGAppUtils Device Type: iPad Mini 1G");
        return DeviceType_iPad_Mini;
    }

    if ([platform isEqualToString:@"iPad2,6"]) {
        NSLog(@"RGAppUtils Device Type: iPad Mini 1G");
        return DeviceType_iPad_Mini;
    }

    if ([platform isEqualToString:@"iPad2,7"]) {
        NSLog(@"RGAppUtils Device Type: iPad Mini 1G");
        return DeviceType_iPad_Mini;
    }

    if ([platform isEqualToString:@"iPad3,1"]) {
        NSLog(@"RGAppUtils Device Type: iPad 3");
        return DeviceType_iPad_3;
    }

    if ([platform isEqualToString:@"iPad3,2"]) {
        NSLog(@"RGAppUtils Device Type: iPad 3");
        return DeviceType_iPad_3;
    }

    if ([platform isEqualToString:@"iPad3,3"]) {
        NSLog(@"RGAppUtils Device Type: iPad 3");
        return DeviceType_iPad_3;
    }

    if ([platform isEqualToString:@"iPad3,4"]) {
        NSLog(@"RGAppUtils Device Type: iPad 4");
        return DeviceType_iPad_4;
    }

    if ([platform isEqualToString:@"iPad3,5"]) {
        NSLog(@"RGAppUtils Device Type: iPad 4");
        return DeviceType_iPad_4;
    }

    if ([platform isEqualToString:@"iPad3,6"]) {
        NSLog(@"RGAppUtils Device Type: iPad 4");
        return DeviceType_iPad_4;
    }

    if ([platform isEqualToString:@"iPad4,1"]) {
        NSLog(@"RGAppUtils Device Type: iPad Air");
        return DeviceType_iPad_Air;
    }

    if ([platform isEqualToString:@"iPad4,2"]) {
        NSLog(@"RGAppUtils Device Type: iPad Air");
        return DeviceType_iPad_Air;
    }

    if ([platform isEqualToString:@"iPad4,3"]) {
        NSLog(@"RGAppUtils Device Type: iPad Air");
        return DeviceType_iPad_Air;
    }

    if ([platform isEqualToString:@"iPad4,4"]) {
        NSLog(@"RGAppUtils Device Type: iPad Mini 2G");
        return DeviceType_iPad_Mini_2;
    }

    if ([platform isEqualToString:@"iPad4,5"]) {
        NSLog(@"RGAppUtils Device Type: iPad Mini 2G");
        return DeviceType_iPad_Mini_2;
    }

    if ([platform isEqualToString:@"iPad4,6"]) {
        NSLog(@"RGAppUtils Device Type: iPad Mini 2G");
        return DeviceType_iPad_Mini_2;
    }

    if ([platform isEqualToString:@"i386"]) {
        NSLog(@"RGAppUtils Device Type: iPhone Simulator 32 bit");
        return DeviceType_iPhone_Simulator_32bit;
    }

    if ([platform isEqualToString:@"x86_64"]) {
        NSLog(@"RGAppUtils Device Type: iPhone Simulator 64 bit");
        return DeviceType_iPhone_Simulator_64bit;
    }
    
    return DeviceType_Unknown;
}

@end
