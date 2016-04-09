//
//  Header.h
//  haki
//
//  Created by 米 on 16/3/30.
//  Copyright © 2016年 猪之歌. All rights reserved.
//
//斗鱼获取房间信息的函数
//    NSLog(@"%ld", time(NULL));
NSString * roomID = [NSString stringWithFormat:@"%d",57321];
NSString * baseURL = @"http://capi.douyucdn.cn/api/v1/room/";
NSString * urlMid = @"?aid=android&client_sys=android&time=";
NSString * time = [NSString stringWithFormat:@"%.0f",[[NSDate date] timeIntervalSince1970]];
NSString * auth = [[NSString stringWithFormat:@"room/%@%@%@1231",roomID,urlMid,time] md5String];
NSString * requestURL = [NSString stringWithFormat:@"%@%@%@%@&auth=%@",baseURL,roomID,urlMid,time,auth];

[mgr GET:requestURL parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
} success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    NSLog(@"%@",responseObject);
} failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    NSLog(@"%@",error);
}];