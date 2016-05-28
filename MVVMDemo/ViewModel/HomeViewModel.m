//
//  HomeViewModel.m
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import "HomeViewModel.h"
#import "HomeListModel.h"
#import "HomeListCellFrame.h"
#import "MJHomeModel.h"

@implementation HomeViewModel

+ (NSURLSessionDataTask *)fetchHomeDataWithParameters:(NSDictionary *)parameters
                                              Success:(void (^)(NSMutableArray *, NSURLSessionDataTask *))successBlock
                                              failure:(failure)failureBlock
{
    return [self postWithUrlString:HOME_HOMEURL parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        
        /*
        NSMutableArray *m = [NSMutableArray new];
        NSArray *data = responseObject[@"data"];
        for (int i=0; i<[data count]; i ++) {
            MJHomeModel *tmp = [MJHomeModel mj_objectWithKeyValues:data[i]];
            [m addObject:tmp];
        }
        
        NSMutableArray *cellFrames  = [HomeViewModel cellViewFrame:data];
        successBlock(cellFrames, task);
         
         */
 
        [self arrayFromDataArray:[HomeListModel class] task:task responseObject:responseObject success:^(NSMutableArray *mutableArray, NSURLSessionDataTask *task) {
            if (successBlock) {
                
                NSMutableArray *cellFrames  = [HomeViewModel cellViewFrame:mutableArray];
                successBlock(cellFrames, task);
            }
        } failure:^(NSError *error, NSURLSessionDataTask *task) {
            if (failureBlock) {
                failureBlock(error, task);
            }
        }];

    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failureBlock) {
            failureBlock (error, task);
        }
    }];
}


+ (NSMutableArray *)cellViewFrame:(NSArray *)data{
    
    NSMutableArray *cellFrames = [[NSMutableArray alloc]initWithCapacity:data.count];
    if ([data count] > 0) {
        for (HomeListModel *listEntity in data) {
            @autoreleasepool {
                HomeListCellFrame *cellFrame = [[HomeListCellFrame alloc] init];
                cellFrame.homeListModel = listEntity;
                [cellFrames addObject:cellFrame];
            }
        }
    }
    return cellFrames;
}

@end
