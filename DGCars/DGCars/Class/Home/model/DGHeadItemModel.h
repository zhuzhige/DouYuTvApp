//
//  DGHeadItemModel.h
//  DGCars
//
//  Created by 米 on 16/4/13.
//  Copyright © 2016年 米. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DGRoomModel.h"

@interface DGHeadItemModel : NSObject

@property (nonatomic, copy) NSString *id;

@property (nonatomic, copy) NSString *pic_url;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) DGRoomModel *room;



@end

/*
 {
 id = 562148;
 "pic_url" = "http://staticlive.douyutv.com/upload/signs/201604131433255874.jpg";
 room =             {
 "cate_id" = 133;
 "credit_illegal" = 0;
 "cur_credit" = 12;
 fans = 32643;
 "game_icon_url" = "http://staticlive.douyutv.com/upload/game_cate/df3b2c93628409f4ddb15d56e19271c3.jpg";
 "game_name" = "\U5143\U6c14\U9886\U57df";
 "game_url" = "/directory/game/yqly";
 "is_white_list" = 0;
 "low_credit" = 4;
 nickname = "\U5168\U80fd\U5076\U50cfD1\U5bb6\U65cf";
 online = 58089;
 "owner_avatar" = "http://uc.douyutv.com/upload/avatar/031/37/09/18_avatar_big.jpg?rltime4";
 "owner_uid" = 31370918;
 "owner_weight" = "230.52kg";
 "room_id" = 562148;
 "room_name" = "\U897f\U53cc\U7248\U7eb3\U6cfc\U6c34\U72c2\U6b22\U4e4b\U90fd";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/14/562148_160413145516.jpg";
 "show_details" = "\U7f8e\U5973\U6df1\U591c\U804a\U7403";
 "show_status" = 1;
 "show_time" = 1460516845;
 "specific_catalog" = d1stars;
 "specific_status" = 1;
 url = "/d1stars";
 "vod_quality" = 0;
 };
 title = "\U897f\U53cc\U7248\U7eb3\U6cfc\U6c34\U72c2\U6b22\U4e4b\U90fd";
 }
 */