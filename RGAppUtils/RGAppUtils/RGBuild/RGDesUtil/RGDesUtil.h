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

/**
 返回 DES 解密后的字符串

 @param encryptText 待解密的字符串
 @param key 密钥
 @return 解密后的字符串
 */
+ (NSString *)decryptTextUseDES:(NSString *)encryptText
                            key:(NSString *)key;

/**
 Base 64 格式字符串转换为文本数据

 @param string Base 64 格式的字符串
 @return 文本数据
 */
+ (NSData *)dataWithBase64EncodedString:(NSString *)string;

/**
 文本数据转换为 Base 64 格式字符串

 @param data 文本数据
 @return Base 64 字符串
 */
+ (NSString *)base64EncodedStringFrom:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
