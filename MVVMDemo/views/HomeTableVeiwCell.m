//
//  HomeTableVeiwCell.m
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import "HomeTableVeiwCell.h"

@interface HomeTableVeiwCell()<CommonImageListViewDelegate>
{
    //1.图片组
    CommonImageListView *_imageListView;;
    
    //2.上传时间
    UILabel *_goodsUploadTimeLabel;
    
    // 3.聊天
    UIButton *_sendContentBtn;
    
    // 打电话
    UIButton *_dailPoneBtn;
    
    // 分享
    UIButton *_shareBtn;
    
    // 6.评论view
    UIView *_commentView;
}

@end

@implementation HomeTableVeiwCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupSubviews];
        [self setUserInteractionEnabled:YES];
    }
    return self;
}


#pragma mark - 添加子控件

- (void)setupSubviews
{
    //1.图片组
    _imageListView = [[CommonImageListView alloc] init];
    _imageListView.contentMode = UIViewContentModeScaleAspectFit;
    _imageListView.delegate = self;
    [self.contentView addSubview:_imageListView];
    
    // 2.上传时间
    _goodsUploadTimeLabel = [[UILabel alloc] init];
    _goodsUploadTimeLabel.font = kBase14Font;
    _goodsUploadTimeLabel.backgroundColor = [UIColor clearColor];
    _goodsUploadTimeLabel.numberOfLines = 0;
    [self.contentView addSubview:_goodsUploadTimeLabel];
  
    // 3.聊天
    _sendContentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.contentView addSubview:_sendContentBtn];
    
    // 4.分享
    _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.contentView addSubview:_shareBtn];
    
    // 5.打电话
    _dailPoneBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.contentView addSubview:_dailPoneBtn];
    
    // 6.评论
    _commentView = [[UIView alloc] init];
    [self.contentView addSubview:_commentView];
}


- (void)setCellFrame:(HomeListCellFrame *)cellFrame
{
    [super setBaseCellFrame:cellFrame];

    _cellFrame = cellFrame;
    
    HomeListModel *listModel = cellFrame.homeListModel;
    
    // 上传时间
    _goodsUploadTimeLabel.text = listModel.last_show_time;
    _goodsUploadTimeLabel.frame = cellFrame.goodsUploadTimeRect;
    
    //打电话
   [ _dailPoneBtn setTitle:listModel.mobile forState:UIControlStateNormal];
    _dailPoneBtn.frame = cellFrame.dailPoneRect;
    
    //分享
    
    //...
    
    // 图片
    [_imageListView setImageUrls:listModel.goods_list];
    _imageListView.frame = cellFrame.imageListViewRect;

    
    // 评论
    [_commentView setFrame:cellFrame.commentViewRect];
    // ....


}
@end
