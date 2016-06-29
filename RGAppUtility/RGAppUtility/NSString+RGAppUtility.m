//
//  NSString+RGAppUtility.m
//  RGAppUtility
//
//  Created by RAIN on 16/4/9.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import "NSString+RGAppUtility.h"
#import <UIKit/UIKit.h>

@implementation NSString (AppInfo)

+ (nonnull NSString *)rg_stringOfAppVersion {
    
    NSString * infoPath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    NSDictionary * infoDic = [NSDictionary dictionaryWithContentsOfFile:infoPath];
    NSString * version = infoDic[@"CFBundleShortVersionString"];
    NSString * build = infoDic[@"CFBundleVersion"];
    
    return [NSString stringWithFormat:@"%@ (%@)", version, build];
}

+ (nonnull NSString *)rg_stringOfBundleIdentifier {
    NSString *infoPath = [NSString rg_pathForResourceInMainBundle:@"Info" ofType:@"plist"];
    NSDictionary *infoDic = [NSDictionary dictionaryWithContentsOfFile:infoPath];
    return infoDic[@"CFBundleIdentifier"];
}

+ (nonnull NSString *)rg_stringOfDeviceTime {
    
    NSDate * deviceTime = [NSDate date];
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd-HH-mm-ss"];
    return [dateFormatter stringFromDate:deviceTime];
}

@end

@implementation NSString (MainBundle)

+ (nonnull NSString *)rg_pathOfMainBundle {
    return [[NSBundle mainBundle] description];
}

+ (void)rg_printPathOfMainBundle {
    NSLog(@"Main Bundle Path: %@", [NSString rg_pathOfMainBundle]);
}

+ (nullable NSString *)rg_pathForResourceInMainBundle:(nullable NSString *)name
                                               ofType:(nullable NSString *)ext
{
    return [[NSBundle mainBundle] pathForResource:name ofType:ext];
}

+ (void)rg_printPathForResourceInMainBundle:(nullable NSString *)name
                                     ofType:(nullable NSString *)ext
{
    NSLog(@"Path for resource in main bundle: \n%@",
          [NSString rg_pathForResourceInMainBundle:name ofType:ext]);
}

- (nullable instancetype)rg_initWithPathForResource:(nullable NSString *)name
                                             ofType:(nullable NSString *)ext
{
    NSError *error;
    NSString *path = [NSString rg_pathForResourceInMainBundle:name ofType:ext];
    NSString *string = [self initWithContentsOfFile:path
                                           encoding:NSUTF8StringEncoding
                                              error:&error];
    NSLog(@"Error in rg_initWithPathForResource: ofType: \n%@", error);
    return string;
}

+ (nullable NSString *)rg_stringWithPathForResource:(nullable NSString *)name
                                             ofType:(nullable NSString *)ext
{
    NSError *error;
    NSString *path = [NSString rg_pathForResourceInMainBundle:name ofType:ext];
    NSString *string = [NSString stringWithContentsOfFile:path
                                                 encoding:NSUTF8StringEncoding
                                                    error:&error];
    NSLog(@"Error in rg_stringWithPathForResource: ofType: \n%@", error);
    return string;
}

@end

@implementation NSString (Sandbox)

+ (nonnull NSString *)rg_pathOfHomeDirectory {
    return NSHomeDirectory();
}

+ (nonnull NSString *)rg_pathOfDocuments {
    return [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory
                                                  inDomains:NSUserDomainMask].firstObject.path;
}

+ (nonnull NSString *)rg_pathOfCaches {
    return [[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory
                                                  inDomains:NSUserDomainMask].firstObject.path;
}

+ (nonnull NSString *)rg_pathOfTmp {
    return NSTemporaryDirectory();
}

+ (void)rg_printPathOfHomeDirectory {
    NSLog(@"Path of HomeDirectory: \n%@", [NSString rg_pathOfHomeDirectory]);
}

+ (void)rg_printPathOfDocuments {
    NSLog(@"Path of Documents: \n%@", [NSString rg_pathOfDocuments]);
}

+ (void)rg_printPathOfCaches {
    NSLog(@"Path of Caches: \n%@", [NSString rg_pathOfCaches]);
}

+ (void)rg_printPathOfTmp {
    NSLog(@"Path of Tmp: \n%@", [NSString rg_pathOfTmp]);
}

@end

@implementation NSString (Trans)

- (id)rg_toJSONObject {
    NSString *string = [self stringByReplacingOccurrencesOfString:@"\0" withString:@""];
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    id obj = [NSJSONSerialization JSONObjectWithData:data
                                             options:NSJSONReadingMutableContainers
                                               error:&error];
    NSLog(@"RGAppUtility NSString to object Error:\n%@", error);
    return obj;
}

@end
