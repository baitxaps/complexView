//
//  HomeListCellFrame.m
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import "HomeListCellFrame.h"
#import "CommonImageListView.h"

@implementation HomeListCellFrame

- (void)setHomeListModel:(HomeListModel *)model
{
    [super setHomeListModel:model];
    
    [self handleActivityCircleLayout];
}


- (void)handleActivityCircleLayout
{
    // 部分子视图y坐标起始位置
    CGFloat nameLabelX  = CGRectGetMinX(self.nameLabelRect);
    CGFloat nameLabelMaxY = CGRectGetMaxY(self.nameLabelRect);
    CGFloat startY = nameLabelMaxY;
    CGFloat textContentWidth = kBaseCellWith - nameLabelX - 8;
    
    // 计算图片
    CGFloat imageListViewX = nameLabelX;
    CGFloat imageListViewY = startY + 8;
    CGSize imageListViewSize = [CommonImageListView imageSizeWithCount:self.homeListModel.goods_list.count];
    _imageListViewRect = (CGRect){{imageListViewX, imageListViewY}, imageListViewSize};
    startY = imageListViewY + imageListViewSize.height;
    
    
    // 上传时间
    _goodsUploadTimeRect = (CGRect){{nameLabelX, nameLabelMaxY}, {textContentWidth, textContentWidth}};
    
    // 聊天
    _sendContentRect = (CGRect){{nameLabelX, nameLabelMaxY}, {textContentWidth, textContentWidth}};
    
    // 打电话
    _dailPoneRect = (CGRect){{nameLabelX, nameLabelMaxY}, {textContentWidth, textContentWidth}};
    
    // 分享
    
    _shareBtnRect = (CGRect){{nameLabelX, nameLabelMaxY}, {textContentWidth, textContentWidth}};
    
    // 评论
    _commentViewRect = (CGRect){{nameLabelX, nameLabelMaxY}, {textContentWidth, textContentWidth}};
    _cellHeight = CGRectGetMaxY(_commentViewRect);
    

    _cellHeight += 8;
}
@end
