//
//  HomeListCellFrame.h
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import "HomeBaseCellFrame.h"
#import "HomeListModel.h"

@interface HomeListCellFrame : HomeBaseCellFrame

@property (assign, nonatomic, readonly) CGRect imageListViewRect;
@property (assign, nonatomic, readonly) CGRect goodsUploadTimeRect;
@property (assign, nonatomic, readonly) CGRect sendContentRect;
@property (assign, nonatomic, readonly) CGRect dailPoneRect;
@property (assign, nonatomic, readonly) CGRect shareBtnRect;
@property (assign, nonatomic, readonly) CGRect commentViewRect;

@end
