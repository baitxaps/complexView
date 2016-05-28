//
//  JsonModel_base.m
//  TestModel
//
//  Created by LiJia on 15/1/5.
//  Copyright (c) 2015年 eelly. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

// 所有属性都为可选
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
    return YES;
}

@end


