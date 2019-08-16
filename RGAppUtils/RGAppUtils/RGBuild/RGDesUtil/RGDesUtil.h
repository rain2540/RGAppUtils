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

+ (NSData *)dataWithBase64EncodedString:(NSString *)string;

+ (NSString *)base64EncodedStringFrom:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
