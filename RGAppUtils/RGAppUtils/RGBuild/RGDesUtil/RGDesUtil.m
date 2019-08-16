//
//  RGDesUtil.m
//  RGAppUtils
//
//  Created by RAIN on 2019/8/13.
//  Copyright © 2019 Smartech. All rights reserved.
//

#import "RGDesUtil.h"
#import <CommonCrypto/CommonCryptor.h>

static NSString * const LocalEmptyString = @"";
static const char encodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

@implementation RGDesUtil

+ (NSData *)dataWithBase64EncodedString:(NSString *)string {
    if (string == nil)
        [NSException raise:NSInvalidArgumentException format:nil];
    if ([string length] == 0)
        return [NSData data];

    static char *decodingTable = NULL;
    if (decodingTable == NULL) {
        decodingTable = malloc(256);
        if (decodingTable == NULL)
            return nil;
        memset(decodingTable, CHAR_MAX, 256);
        NSUInteger i;
        for (i = 0; i < 64; i++) {
            decodingTable[(short)encodingTable[i]] = i;
        }
    }

    const char *characters = [string cStringUsingEncoding:NSASCIIStringEncoding];
    if (characters == NULL)     //  Not an ASCII string!
        return nil;
    char *bytes = malloc((([string length] + 3) / 4) * 3);
    if (bytes == NULL)
        return nil;
    NSUInteger length = 0;

    NSUInteger i = 0;
    while (YES) {
        char buffer[4];
        short bufferLength;
        for (bufferLength = 0; bufferLength < 4; i++) {
            if (characters[i] == '\0')
                break;
            if (isspace(characters[i]) || characters[i] == '=')
                continue;
            buffer[bufferLength] = decodingTable[(short)characters[i]];
            if (buffer[bufferLength++] == CHAR_MAX) {     //  Illegal character!
                free(bytes);
                return nil;
            }
        }

        if (bufferLength == 0) {
            break;
        }
        if (bufferLength == 1) {  // At least two characters are needed to produce one byte!
            free(bytes);
            return nil;
        }

        // Decode the characters in the buffer to bytes.
        bytes[length++] = (buffer[0] << 2) | (buffer[1] >> 4);
        if (bufferLength > 2) {
            bytes[length++] = (buffer[1] << 4) | (buffer[2] >> 2);
        }
        if (bufferLength > 3) {
            bytes[length++] = (buffer[2] << 6) | buffer[3];
        }
    }

    bytes = realloc(bytes, length);
    return [NSData dataWithBytesNoCopy:bytes length:length];
}

+ (NSString *)base64EncodedStringFrom:(NSData *)data {
    if ([data length] == 0)
        return @"";

    char *characters = malloc((([data length] + 2) / 3) * 4);
    if (characters == NULL)
        return nil;
    NSUInteger length = 0;

    NSUInteger i = 0;
    while (i < [data length]) {
        char buffer[3] = {0,0,0};
        short bufferLength = 0;
        while (bufferLength < 3 && i < [data length])
            buffer[bufferLength++] = ((char *)[data bytes])[i++];

        // Encode the bytes in the buffer to four characters, including padding "=" characters if necessary.
        characters[length++] = encodingTable[(buffer[0] & 0xFC) >> 2];
        characters[length++] = encodingTable[((buffer[0] & 0x03) << 4) | ((buffer[1] & 0xF0) >> 4)];
        if (bufferLength > 1)
            characters[length++] = encodingTable[((buffer[1] & 0x0F) << 2) | ((buffer[2] & 0xC0) >> 6)];
        else characters[length++] = '=';
        if (bufferLength > 2)
            characters[length++] = encodingTable[buffer[2] & 0x3F];
        else characters[length++] = '=';
    }

    return [[NSString alloc] initWithBytesNoCopy:characters length:length encoding:NSASCIIStringEncoding freeWhenDone:YES];
}


#pragma mark - Private
+ (NSData *)encryptDataUseDES:(NSData *)data
                      WithKey:(NSString *)key
{
    return [self dataWithData:data key:key optionForDES:kCCEncrypt];
}

+ (NSData *)decryptDataUseDES:(NSData *)data
                      WithKey:(NSString *)key
{
    return [self dataWithData:data key:key optionForDES:kCCDecrypt];
}

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
