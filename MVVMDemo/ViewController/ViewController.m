//
//  ViewController.m
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewModel.h"
#import "HomeListCellFrame.h"
#import "HomeTableVeiwCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic)  IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSArray *cellFrames;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSString *endTime = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
    
    NSMutableDictionary *parameters= [NSMutableDictionary dictionaryWithDictionary:@{@"pageParam": @{@"page" : @"1",@"limit" : @"10"},@"time" : endTime}];
  
    [HomeViewModel fetchHomeDataWithParameters:parameters Success:^(NSMutableArray *homeArray, NSURLSessionDataTask *task) {
        NSLog(@"%@",homeArray);
        
        self.cellFrames = homeArray;
        
        [self.tableView reloadData];

    } failure:^(NSError *error, NSURLSessionDataTask *task) {
          NSLog(@"%@",error.localizedDescription);
    }];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cellFrames.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeListCellFrame *cellFrame = _cellFrames[indexPath.row];;
    
    return cellFrame.cellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifer = @"HomeBaseTableViewCell";
    HomeTableVeiwCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifer];
    if (cell == nil)
    {
        cell =  [[HomeTableVeiwCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifer];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    HomeListCellFrame *cellFrame = _cellFrames[indexPath.row];
    cell.cellFrame = cellFrame;
    
    return cell;
}


@end
