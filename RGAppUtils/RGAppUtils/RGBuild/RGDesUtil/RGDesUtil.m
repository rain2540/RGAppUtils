//
//  RGDesUtil.m
//  RGAppUtils
//
//  Created by RAIN on 2019/8/13.
//  Copyright © 2019 Smartech. All rights reserved.
//

#import "RGDesUtil.h"
#import <CommonCrypto/CommonCryptor.h>

@implementation RGDesUtil

static const char encodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

#pragma mark - Private

/**
 文本数据进行 加密 / 解密, 此函数不可用于过长文本

 @param data 需要加密 / 解密的 文本数据
 @param key 密钥
 @param option 加密 / 解密 选项
 @return 加密 / 解密 后的文本数据
 */
+ (NSData *)dataWithData:(NSData *)data
                     key:(NSString *)key
            optionForDES:(CCOperation)option

{
    char keyPtr[kCCKeySizeAES256+1];
    bzero(keyPtr, sizeof(keyPtr));

    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];

    NSUInteger dataLength = [data length];

    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);

    size_t numBytesDecrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(option,
                                          kCCAlgorithmDES,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode,
                                          keyPtr,
                                          kCCBlockSizeDES,
                                          NULL,
                                          [data bytes],
                                          dataLength,
                                          buffer,
                                          bufferSize,
                                          &numBytesDecrypted);

    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
    }

    free(buffer);
    return nil;
}

@end
