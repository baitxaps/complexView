//
//  HomeBaseTableViewCell.m
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import "HomeBaseTableViewCell.h"



@implementation HomeBaseTableViewCell
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addBaseSubviews];
    }
    return self;
}

- (void)addBaseSubviews
{
    // 1.店头像
    _headImageView = [[UIImageView alloc] init];
    _headImageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *headTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(headGestureAction:)];
    [_headImageView addGestureRecognizer:headTap];
    [self.contentView addSubview:_headImageView];
    headTap.view.exclusiveTouch = YES;
    
    // 2.店名
    _nameLabel = [[UILabel alloc] init];
    _nameLabel.font = [UIFont systemFontOfSize:16.f];
    _nameLabel.backgroundColor = [UIColor clearColor];
    _nameLabel.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_nameLabel];

    
    // 3.时间
    _timeLabel = [[UILabel alloc] init];
    _timeLabel.font = [UIFont systemFontOfSize:16.f];
    _timeLabel.backgroundColor = [UIColor clearColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_timeLabel];
    
    // 4.地点
    _addressLabel = [[UILabel alloc] init];
    _addressLabel.font = [UIFont systemFontOfSize:16.f];
    _addressLabel.backgroundColor = [UIColor clearColor];
    _addressLabel.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_addressLabel];
    
    // 5.关注
    _attentionBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.contentView addSubview:_attentionBtn];
    
    // 5.关注人数
    _addtntionNumLabel = [[UILabel alloc] init];
    _addtntionNumLabel.font = [UIFont systemFontOfSize:10.f];
    _addtntionNumLabel.backgroundColor = [UIColor clearColor];
    _addtntionNumLabel.textColor = kBaseRGBColor(149, 149, 149);
    _addtntionNumLabel.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:_timeLabel];
}

- (void)headGestureAction:(UITapGestureRecognizer *)tap
{
 // to do ...
}


- (void)setBaseCellFrame:(HomeBaseCellFrame *)cellFrame
{
    _baseCellFrame = cellFrame;
    HomeListModel *listModel = cellFrame.homeListModel;
    
    
    _headImageView.frame = _baseCellFrame.headImageViewRect;
   // _headImageView.image = ...
    
    _nameLabel.text = listModel.store_name;
    _nameLabel.frame = _baseCellFrame.nameLabelRect;
    
    _timeLabel.text = listModel.open_year;
    _timeLabel.frame = _baseCellFrame.timeLabelRect;
    
    // ...
    
    _addtntionNumLabel.text = listModel.follow_num;
    _addtntionNumLabel.frame = _baseCellFrame.attentionNumLabelRect;
    
}


@end
