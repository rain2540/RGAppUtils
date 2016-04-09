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

+ (void)pathOfMainBundle {
    NSLog(@"Main Bundle Path: %@", [[NSBundle mainBundle] description]);
}

+ (NSString *)pathForResourceInMainBundle:(NSString *)name
                                   ofType:(NSString *)ext
{
    return [[NSBundle mainBundle] pathForResource:name ofType:ext];
}

- (instancetype)initWithPathForResource:(NSString *)name
                                 ofType:(NSString *)ext
{
    NSError *error;
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:ext];
    NSString *string = [self initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"Error in initWithPathForResource: ofType: ~ %@", error);
    return string;
}

@end

@implementation NSString (Sandbox)

+ (NSString *)pathOfHomeDirectory {
    return NSHomeDirectory();
}

+ (NSString *)pathOfDocuments {
    return [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject.path;
}

+ (NSString *)pathOfCaches {
    return [[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask].firstObject.path;
}

+ (NSString *)pathOfTmp {
    return NSTemporaryDirectory();
}

@end
