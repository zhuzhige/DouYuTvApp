//
//  BarrageModel.h
//  DGCars
//
//  Created by 米 on 16/4/8.
//  Copyright © 2016年 米. All rights reserved.
//  Barrage model

#import <Foundation/Foundation.h>

@interface BarrageModel : NSObject

@property(nonatomic, copy)NSString *host;
@property(nonatomic, assign)UInt16 port;
@property(nonatomic, copy)NSString *roomID;

@end
