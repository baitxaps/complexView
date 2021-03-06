//
//  HomeViewModel.h
//  MVVMDemo
//
//  Created by rhc on 11/05/16.
//  Copyright © 2016年 rhc. All rights reserved.
//

#import "HomeBaseViewModel.h"

@interface HomeViewModel : HomeBaseViewModel
/**
 *  获取商品详细信息
 *
 *  @param goodsId      商品ID
 *  @param success 成功就返回数据模型
 *  @param failure 失败返回error
 *
 *  @return homeArray
 */
+ (NSURLSessionDataTask *)fetchHomeDataWithParameters:(NSDictionary *)parameters
                                            Success:(void (^)(NSMutableArray *homeArray,NSURLSessionDataTask *task))successBlock
                                            failure:(failure)failureBlock;
@end
