//
//  DGHomeSquareRoomModel.m
//  DGCars
//
//  Created by 米 on 16/4/14.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGHomeSquareRoomModel.h"

@implementation DGHomeSquareRoomModel
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
