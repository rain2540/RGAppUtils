//
//  UIDevice+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DeviceType) {
    DeviceType_Unknown,
    //  iPhone
    DeviceType_iPhone_2G,
    DeviceType_iPhone_3G,
    DeviceType_iPhone_3GS,
    DeviceType_iPhone_4,
    DeviceType_iPhone_4S,
    DeviceType_iPhone_5,
    DeviceType_iPhone_5c,
    DeviceType_iPhone_5s,
    DeviceType_iPhone_6_Plus,
    DeviceType_iPhone_6,
    DeviceType_iPhone_6s,
    DeviceType_iPhone_6s_Plus,
    DeviceType_iPhone_SE,
    DeviceType_iPhone_7,
    DeviceType_iPhone_7_Plus,
    //  iPod Touch
    DeviceType_iPod_Touch_1,
    DeviceType_iPod_Touch_2,
    DeviceType_iPod_Touch_3,
    DeviceType_iPod_Touch_4,
    DeviceType_iPod_Touch_5,
    DeviceType_iPod_Touch_6,
    //  iPad
    DeviceType_iPad_1,
    DeviceType_iPad_2,
    DeviceType_iPad_Mini,
    DeviceType_iPad_3,
    DeviceType_iPad_4,
    DeviceType_iPad_Air,
    DeviceType_iPad_Air_2,
    DeviceType_iPad_Mini_2,
    DeviceType_iPad_Mini_3,
    DeviceType_iPad_Mini_4,
    DeviceType_iPad_Pro,
    //  Apple TV
    DeviceType_Apple_TV,
    //  iPhone Simulator
    DeviceType_iPhone_Simulator_32bit,
    DeviceType_iPhone_Simulator_64bit
};

@interface UIDevice (RGAppUtils)

/**
 打印当前设备信息
 */
+ (void)rg_printDeviceInformations;

/**
 判断当前设备系统版本号是否大于等于某个版本号

 @param version 需要判断的版本号
 @return 判断结果
 */
+ (BOOL)rg_systemVersionGreaterThanOrEqualTo:(NSString *)version;

/**
 获取设备时间

 @return 描述设备时间的字符串
 */
+ (NSString *)rg_stringOfDeviceTime;

/**
 获取当前设备类型

 @return 设备类型
 */
+ (DeviceType)rg_deviceType;

@end
