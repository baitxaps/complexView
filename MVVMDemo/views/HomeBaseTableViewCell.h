//
//  HomeBaseTableViewCell.h
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeListCellFrame.h"
#import "UILayoutConst.h"

@interface HomeBaseTableViewCell : UITableViewCell
{
    // 1.店头像
    UIImageView *_headImageView;
    // 2.店名
    UILabel *_nameLabel;
    // 3.时间
    UILabel *_timeLabel;
    // 4.地点
    UILabel *_addressLabel;
    // 5.关注
    UIButton *_attentionBtn;
    //6. 关注人数
     UILabel *_addtntionNumLabel;
}

@property (nonatomic, strong) HomeBaseCellFrame *baseCellFrame;
@end
