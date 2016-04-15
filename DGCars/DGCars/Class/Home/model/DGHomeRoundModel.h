//
//  DGHomeRoundModel.h
//  DGCars
//
//  Created by 米 on 16/4/11.
//  Copyright © 2016年 米. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DGHomeRoundModel : NSObject

@property (nonatomic, copy) NSString *id;

@property (nonatomic, copy) NSString *push_ios;

@property (nonatomic, copy) NSString *push_android;

@property (nonatomic, copy) NSString *mobile_switch;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *status;

@property (nonatomic, copy) NSString *sort;

@property (nonatomic, copy) NSString *ctime;

@property (nonatomic, copy) NSString *admin;

@property (nonatomic, copy) NSString *related_id;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)roomWithDict:(NSDictionary *)dict;

/*
 admin = tangyi;
 ctime = 1435646550;
 id = 12;
 "mobile_switch" = 1;
 name = "\U5fa1\U5b85\U8fbe\U4eba";
 "push_android" = 1;
 "push_ios" = 1;
 "related_id" = "";
 sort = 0;
 status = 0;
 url =
 */

@end
