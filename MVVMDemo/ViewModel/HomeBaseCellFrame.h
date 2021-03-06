//
//  HomeBaseCellFrame.h
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HomeListModel.h"
#import "NSString+Size.h"
#import "UILayoutConst.h"

/**
 *  ViewModel层，就是View和Model层的粘合剂，他是一个放置用户输入验证逻辑，视图显示逻辑,
 *  发起网络请求和其他各种各样的代码的极好的地方。说白了，
 *  就是把原来ViewController层的业务逻辑和页面逻辑等剥离出来放到ViewModel层
 */

@interface HomeBaseCellFrame : NSObject
{
  CGFloat _cellHeight;
}

@property (strong, nonatomic) HomeListModel *homeListModel;

@property (assign, nonatomic,readonly) CGFloat cellHeight;
@property (assign, nonatomic,readonly) CGRect headImageViewRect;
@property (assign, nonatomic,readonly) CGRect nameLabelRect;
@property (assign, nonatomic,readonly) CGRect timeLabelRect;
@property (assign, nonatomic,readonly) CGRect addressLabelRect;
@property (assign, nonatomic,readonly) CGRect attentionBtnRect;
@property (assign, nonatomic,readonly) CGRect attentionNumLabelRect;


@end
