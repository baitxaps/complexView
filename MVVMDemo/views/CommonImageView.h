//
//  CommonImageView.h
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol CommonImageViewDelegate <NSObject>

@optional

- (void)commonImageViewClick:(int)imageTag;

@end

@interface CommonImageView : UIImageView

@property (nonatomic, copy) NSString *urlString;
@property (nonatomic, assign) int imageTag;
@property (nonatomic, weak) id <CommonImageViewDelegate> delegate;

@end



