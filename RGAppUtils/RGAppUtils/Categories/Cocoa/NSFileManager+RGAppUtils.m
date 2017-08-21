//
//  NSFileManager+RGAppUtils.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/18.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "NSFileManager+RGAppUtils.h"

@implementation NSFileManager (RGAppUtils)

+ (NSString *)rg_homeDirectoryPath {
    return NSHomeDirectory();
}

+ (NSString *)rg_documentsPath {
    return [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject.path;
}

+ (NSString *)rg_cachesPath {
    return [[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask].firstObject.path;
}

+ (NSString *)rg_temporaryPath {
    return NSTemporaryDirectory();
}

+ (double)rg_cacheSize {
    // 取出 cache 文件路径
    NSString *cachePath = [NSFileManager rg_cachesPath];
    // 取出文件夹下所有文件, 构成数组
    NSArray *fileNames = [[NSFileManager defaultManager] subpathsAtPath:cachePath];
    NSInteger fileTotalSize = 0;
    NSError *error;
    // 快速枚举出所有文件名
    for (NSString *fileName in fileNames) {
        // 把文件名拼接到路径中
        NSString *path = [cachePath stringByAppendingPathComponent:fileName];
        // 获取文件属性
        NSDictionary *fileAttributes = [[NSFileManager defaultManager] attributesOfItemAtPath:path error:&error];
        NSLog(@"FileManager get cache file attributes failed with error: \n%@", error);
        // 根据文件属性判断是否是文件夹（如果是文件夹就跳过文件夹，不将文件夹大小累加到文件总大小）
        if ([fileAttributes[NSFileType] isEqualToString:NSFileTypeDirectory]) {
            continue;
        }
        // 获取单个文件大小, 并累加到总大小
        fileTotalSize += [fileAttributes[NSFileSize] integerValue];
    }
    // 将字节大小转为 MB, 然后传出去
    return fileTotalSize / (1024.0 * 1024.0);
}

+ (NSString *)rg_cacheSizeString {
    return [NSString stringWithFormat:@"%.2f M", [NSFileManager rg_cacheSize]];
}

+ (void)rg_clearCache {
    NSString *cachePath = [NSFileManager rg_cachesPath];
    NSArray *fileNames = [[NSFileManager defaultManager] subpathsAtPath:cachePath];
    NSError *error;
    for (NSString *fileName in fileNames) {
        NSString *path = [cachePath stringByAppendingPathComponent:fileName];
        if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
            [[NSFileManager defaultManager] removeItemAtPath:path error:&error];
            NSLog(@"FileManager clear cache error: \n%@", error);
        }
    }
}

@end
