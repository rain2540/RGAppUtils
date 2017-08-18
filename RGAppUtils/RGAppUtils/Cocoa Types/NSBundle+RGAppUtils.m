//
//  NSBundle+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "NSBundle+RGAppUtils.h"

@implementation NSBundle (RGAppUtils)

#pragma mark Public Methods
+ (NSString *)rg_mainBundlePath {
    return [NSBundle mainBundle].bundlePath;
}

+ (NSString *)rg_appVersion {
    NSDictionary *infoDic = [NSBundle infoDic];
    NSString *version = infoDic[@"CFBundleShortVersionString"];
    NSString *build = infoDic[@"CFBundleVersion"];
    return [NSString stringWithFormat:@"%@ (%@)", version, build];
}

+ (NSString *)rg_displayName {
    NSDictionary *infoDic = [NSBundle infoDic];
    return infoDic[@"CFBundleDisplayName"];
}

+ (NSString *)rg_identifier {
    NSDictionary *infoPath = [NSBundle infoDic];
    return infoPath[@"CFBundleIdentifier"];
}

+ (NSString *)rg_pathForResourceInMainBundle:(nullable NSString *)name
                                      ofType:(nullable NSString *)ext
{
    return [[NSBundle mainBundle] pathForResource:name ofType:ext];
}

+ (NSString *)rg_stringWithResourceInMainBundle:(nullable NSString *)name
                                       ofType:(nullable NSString *)ext
{
    NSError *error;
    NSString *path = [NSBundle rg_pathForResourceInMainBundle:name ofType:ext];
    NSString *string = [NSString stringWithContentsOfFile:path
                                                 encoding:NSUTF8StringEncoding
                                                    error:&error];
    NSLog(@"RGAppUtils Bundle string with resource error: \n%@", error);
    return string;
}

#pragma mark Private Method
+ (NSDictionary *)infoDic {
    NSString *infoPath = [NSBundle rg_pathForResourceInMainBundle:@"Info" ofType:@"plist"];
    return [NSDictionary dictionaryWithContentsOfFile:infoPath];
}

@end
