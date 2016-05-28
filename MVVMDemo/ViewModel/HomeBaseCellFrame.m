//
//  HomeBaseCellFrame.m
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import "HomeBaseCellFrame.h"

@implementation HomeBaseCellFrame

- (void)setHomeListModel:(HomeListModel *)homeListModel
{
    _homeListModel = homeListModel;
    
    // 店头像
    CGFloat headX = 8;
    CGFloat headY = 8;
    _headImageViewRect = (CGRect){{headX, headY}, {40,40}};
    
    // 店名
    CGFloat nameLabelX = CGRectGetMaxX(_headImageViewRect) + 8;
    CGFloat nameLabelY = headY;
    NSString *userName = homeListModel.store_name;
    if (userName == nil || userName.length == 0) {
        userName = @"null";
    }
    
     // 时间
    CGFloat nameLabelWidth = [userName widthWithFont:kBase16Font maxWidth:185];
    _timeLabelRect = (CGRect){{nameLabelX, nameLabelY}, {nameLabelWidth, 19.f}};
    
     // 地点
    CGFloat addressLabelRect = CGRectGetMaxX(_nameLabelRect) + 8;
    _addressLabelRect = (CGRect){{addressLabelRect, headY}, {15,15}};
    
    // 关注
    CGFloat carLogImageViewX = CGRectGetMaxX(_addressLabelRect) + 8;
    _attentionBtnRect = (CGRect){{carLogImageViewX, headY}, {20,20}};
    
    // 关注人数
    CGFloat timeLabelY = headY;
    CGFloat timeLabelWidth = [homeListModel.region_name widthWithFont:kBase10Font maxWidth:120];
    CGFloat timeLabelX = kBaseCellWith - timeLabelWidth - 10;
    _attentionNumLabelRect = (CGRect){ {timeLabelX, timeLabelY}, timeLabelWidth, 13};
    
    _cellHeight += CGRectGetMaxY(_addressLabelRect);
}


@end
