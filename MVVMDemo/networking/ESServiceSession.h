//
//  ESServiceSession.h
//  Seller
//
//  Created by Andy Lee on 6/9/14.
//  Copyright (c) 2014 Eelly.com. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface ESServiceSession : AFHTTPSessionManager

@property (assign, nonatomic) id cacheData;

+ (instancetype)sessionManager;

/**
 *  清空authToken
 */
- (void)clearSessionHeader;

@end
