//
//  RGDesUtil.h
//  RGAppUtils
//
//  Created by RAIN on 2019/8/13.
//  Copyright © 2019 Smartech. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RGDesUtil : NSObject

+ (NSString *)encryptTextUseDES:(NSString *)plainText
                            key:(NSString *)key;

+ (NSString *)decryptTextUseDES:(NSString *)encryptText
                            key:(NSString *)key;

+ (NSData *)dataWithBase64EncodedString:(NSString *)string;

/**
 文本数据转换为 Base 64 格式字符串

 @param data 文本数据
 @return Base 64 字符串
 */
+ (NSString *)base64EncodedStringFrom:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
