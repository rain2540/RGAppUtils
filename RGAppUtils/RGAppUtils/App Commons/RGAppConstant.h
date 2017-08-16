//
//  RGAppConstant.h
//  RGAppUtils
//
//  Created by RAIN on 2017/8/16.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#ifndef RGAppConstant_h
#define RGAppConstant_h

#define SharedApplication           ([UIApplication sharedApplication])
#define kAppDelegate(a)             ((a *)[[UIApplication sharedApplication] delegate])
#define DefaultNotificationCenter   ([NSNotificationCenter defaultCenter])
#define StandardUserDefaults        ([NSUserDefaults standardUserDefaults])
#define DefaultFileManager          ([NSFileManager defaultManager])
#define kAppKeyWindow               ([UIApplication sharedApplication].keyWindow)

#endif /* RGAppConstant_h */
