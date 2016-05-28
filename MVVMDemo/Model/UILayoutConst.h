//
//  UILayoutConst.h
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#ifndef UILayoutConst_h
#define UILayoutConst_h

#define kBase18Font                         ([UIFont systemFontOfSize:18])
#define kBase16Font                         ([UIFont systemFontOfSize:16])
#define kBase15Font                         ([UIFont systemFontOfSize:15])
#define kBase14Font                         ([UIFont systemFontOfSize:14])
#define kBase13Font                         ([UIFont systemFontOfSize:13])
#define kBase12Font                         ([UIFont systemFontOfSize:12])
#define kBase11Font                         ([UIFont systemFontOfSize:11])
#define kBase10Font                         ([UIFont systemFontOfSize:10])

#define kBaseRGBColor(r, g, b)  ([UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1])

#define kBaseCellWith           ([UIScreen mainScreen].bounds.size.width)
#define IS_IOS7         ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

//const int kBaseGapBetweenSubViews = 8;
//const int kBaseGapToSuperView = 10;
//const int kBaseSmallGapToSuperView = 5;
//const int kBaseGapSmallBetweenSubViews = 3;

//const int kBaseHeadImageViewW = 40;
//const int kBaseHeadImageViewH = 40;
//const int kBaseSmallHeadImageViewW = 30;
//const int kBaseSmallHeadImageViewH = 30;




#endif /* UILayoutConst_h */
