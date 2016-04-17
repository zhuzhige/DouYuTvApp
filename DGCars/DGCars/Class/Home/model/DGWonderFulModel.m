//
//  DGWonderFulCellModel.m
//  DGCars
//
//  Created by 米 on 16/4/16.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGWonderFulModel.h"

@implementation DGWonderFulModel

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self mj_setKeyValues:dict];
    }
    return self;
}
+ (instancetype)wonderFulWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}

@end
