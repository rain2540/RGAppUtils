//
//  NSString+RGAppUtility.m
//  RGAppUtility
//
//  Created by RAIN on 16/4/9.
//  Copyright © 2016年 Smartech. All rights reserved.
//

#import "NSString+RGAppUtility.h"
#import <UIKit/UIKit.h>

@implementation NSString (MainBundle)

+ (NSString *)rg_pathOfMainBundle {
    return [[NSBundle mainBundle] description];
}

+ (void)rg_printPathOfMainBundle {
    NSLog(@"Main Bundle Path: %@", [NSString rg_pathOfMainBundle]);
}

+ (NSString *)rg_pathForResourceInMainBundle:(NSString *)name
                                      ofType:(NSString *)ext
{
    return [[NSBundle mainBundle] pathForResource:name ofType:ext];
}

+ (void)rg_printPathForResourceInMainBundle:(NSString *)name
                                     ofType:(NSString *)ext
{
    NSLog(@"Path for resource in main bundle: \n%@", [NSString rg_pathForResourceInMainBundle:name ofType:ext]);
}

- (instancetype)rg_initWithPathForResource:(NSString *)name
                                    ofType:(NSString *)ext
{
    NSError *error;
    NSString *path = [NSString rg_pathForResourceInMainBundle:name ofType:ext];
    NSString *string = [self initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"Error in rg_initWithPathForResource: ofType: \n%@", error);
    return string;
}

+ (NSString *)rg_stringWithPathForResource:(NSString *)name
                                    ofType:(NSString *)ext
{
    NSError *error;
    NSString *path = [NSString rg_pathForResourceInMainBundle:name ofType:ext];
    NSString *string = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"Error in rg_stringWithPathForResource: ofType: \n%@", error);
    return string;
}

@end

@implementation NSString (Sandbox)

+ (NSString *)rg_pathOfHomeDirectory {
    return NSHomeDirectory();
}

+ (NSString *)rg_pathOfDocuments {
    return [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject.path;
}

+ (NSString *)rg_pathOfCaches {
    return [[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask].firstObject.path;
}

+ (NSString *)rg_pathOfTmp {
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
