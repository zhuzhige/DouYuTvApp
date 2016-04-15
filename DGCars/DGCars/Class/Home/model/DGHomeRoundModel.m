//
//  DGHomeRoundModel.m
//  DGCars
//
//  Created by 米 on 16/4/11.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGHomeRoundModel.h"

@implementation DGHomeRoundModel

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self mj_setKeyValues:dict];
    }
    return self;
}
+ (instancetype)roomWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}

@end
