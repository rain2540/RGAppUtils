//
//  CLLocation+RGAppUtils.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

@interface CLLocation (RGAppUtils)

/**
 百度坐标 ---> 火星坐标

 @param baiduCoordinate 记录百度坐标经纬度的结构体
 @return 记录火星坐标经纬度的结构体
 */
+ (CLLocationCoordinate2D)rg_locationMarsFromBaidu:(CLLocationCoordinate2D)baiduCoordinate;

/**
 火星坐标 ---> 百度坐标

 @param marsCoordinate 记录火星坐标经纬度的结构体
 @return 记录百度坐标经纬度的结构体
 */
+ (CLLocationCoordinate2D)rg_locationBaiduFromMars:(CLLocationCoordinate2D)marsCoordinate;


@end
