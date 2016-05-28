//
//  Config.h
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#ifndef Config_h
#define Config_h

#define appSecret @"#Xq!=aPB}M(gHMBQ>DrT;0{N<zAZf^dK"
#define API_TOKEN_IOS @"%HdoQqwI3sQ3bBnaLReX^hMp"
#define CurrentVersionNumberWithAndriod @"10200"

// 服务系统
#define Customer_System @"Mall"
// 服务器的status code
#define STATUS_CODE_TOKEN_EXPIRED    231502// token过期
#define STATUS_CODE_SUCCESS           0

//首页
#define BASEURL    @"http://pifaquan.eelly.com/"
#define HOME_HOMEURL @"api/index/buyerIndex"


/**
 *
 */

#ifdef DEBUG
#define debugLog(...) NSLog(__VA_ARGS__)
#define debugMethod() NSLog(@"%s", __func__)
#define debugObj(obj) NSLog(@"%s:%@", #obj, obj)
#else
#define debugLog(...)
#define debugMethod()
#define debugObj(Obj)
#endif

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;


#define kBufferDurationSeconds 0.5
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define SAFE_RELEASE(x) [x release];x=nil

#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define CurrentSystemVersion ([[UIDevice currentDevice] systemVersion])
#define CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])

#define APP_VERSION         [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]

#define RGB(A, B, C)        [UIColor colorWithRed:(A)/255.0 green:(B)/255.0 blue:(C)/255.0 alpha:1.0]
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define kStatusAndNavHeight 64.0f
#endif /* Config_h */
