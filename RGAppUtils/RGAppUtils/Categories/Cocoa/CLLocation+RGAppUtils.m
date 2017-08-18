//
//  CLLocation+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "CLLocation+RGAppUtils.h"

static const CLLocationDegrees Trans_PI = M_PI * 3000.0 / 180.0;


@implementation CLLocation (RGAppUtils)

//  百度坐标 ---> 火星坐标
+ (CLLocationCoordinate2D)rg_locationMarsFromBaidu:(CLLocationCoordinate2D)baiduCoordinate {
    CLLocationDegrees x = baiduCoordinate.longitude - 0.0065, y = baiduCoordinate.latitude - 0.006;
    CLLocationDegrees z = sqrt(x * x + y * y) - 0.00002 * sin(y * Trans_PI);
    CLLocationDegrees theta = atan2(y, x) - 0.000003 * cos(x * Trans_PI);
    CLLocationDegrees gg_lon = z * cos(theta);
    CLLocationDegrees gg_lat = z * sin(theta);

    return CLLocationCoordinate2DMake(gg_lat, gg_lon);
}

//  火星坐标 ---> 百度坐标
+ (CLLocationCoordinate2D)rg_locationBaiduFromMars:(CLLocationCoordinate2D)marsCoordinate {
    CLLocationDegrees x = marsCoordinate.longitude, y = marsCoordinate.latitude;
    CLLocationDegrees z = sqrt(x * x + y * y) + 0.00002 * sin(y * Trans_PI);
    CLLocationDegrees theta = atan2(y, x) + 0.000003 * cos(x * Trans_PI);
    CLLocationDegrees bd_lon = z * cos(theta) + 0.0065;
    CLLocationDegrees bd_lat = z * sin(theta) + 0.006;

    return CLLocationCoordinate2DMake(bd_lat, bd_lon);
}

@end
