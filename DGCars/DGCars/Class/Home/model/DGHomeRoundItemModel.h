//
//  DGHomeRoundItemModel.h
//  DGCars
//
//  Created by 米 on 16/4/14.
//  Copyright © 2016年 米. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DGHomeRoundModel;

@interface DGHomeRoundItemModel : NSObject

@property (nonatomic, assign) BOOL isNew;

@property (nonatomic, strong) NSArray<DGHomeRoundModel *> *result;


@end

/*
 2016-04-14 17:30:34.828 DGCars[40559:846900] {
 data =     {
 isNew = 0;
 result =         (
 {
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
 url = "http://staticlive.douyutv.com/upload/room_tag/fcd0ed3ceef8e6d87f46351b53c78b90.jpg";
 },
 {
 admin = lijiayu;
 ctime = 1446196317;
 id = 42;
 "mobile_switch" = 0;
 name = "\U8d5b\U4e8b\U76f4\U64ad";
 "push_android" = 1;
 "push_ios" = 1;
 "related_id" = "1,2,3,4";
 sort = 0;
 status = 0;
 url = "http://staticlive.douyutv.com/upload/room_tag/fc42f5d973067b37dcd3b5c5beb34c72.jpg";
 },
 {
 admin = lijiayu;
 ctime = 1435646512;
 id = 8;
 "mobile_switch" = 1;
 name = "\U804c\U4e1a\U9009\U624b";
 "push_android" = 1;
 "push_ios" = 1;
 "related_id" = "";
 sort = 10;
 status = 0;
 url = "http://staticlive.douyutv.com/upload/room_tag/2587b497fd09d7dc07623504952ff37c.jpg";
 },
 {
 admin = lijiayu;
 ctime = 1444473092;
 id = 20;
 "mobile_switch" = 1;
 name = "\U6e38\U620f\U5973\U795e";
 "push_android" = 1;
 "push_ios" = 1;
 "related_id" = 19;
 sort = 11;
 status = 0;
 url = "http://staticlive.douyutv.com/upload/room_tag/1eae93908d505b6361fc0edfd856f3df.jpg";
 },
 {
 admin = lijiayu;
 ctime = 1435646463;
 id = 3;
 "mobile_switch" = 1;
 name = "\U56fd\U670d\U7b2c\U4e00";
 "push_android" = 1;
 "push_ios" = 1;
 "related_id" = "";
 sort = 20;
 status = 0;
 url = "http://staticlive.douyutv.com/upload/room_tag/dd486d8b4e4e65065d79100df3528df2.jpg";
 },
 {
 admin = taoshiying;
 ctime = 1454073808;
 id = 71;
 "mobile_switch" = 0;
 name = "\U9c9c\U8089\U76f4\U64ad";
 "push_android" = 1;
 "push_ios" = 1;
 "related_id" = 173;
 sort = 26;
 status = 0;
 url = "http://staticlive.douyutv.com/upload/room_tag/28e14785a75fc1bdcc0b65886d0345f5.png";
 },
 {
 admin = lijiayu;
 ctime = 1446193730;
 id = 27;
 "mobile_switch" = 0;
 name = "\U5361\U724c\U7ade\U6280";
 "push_android" = 1;
 "push_ios" = 1;
 "related_id" = "";
 sort = 100;
 status = 0;
 url = "http://staticlive.douyutv.com/upload/room_tag/69feebb105183ec4c33b856f5dce6ae4.jpg";
 },
 {
 admin = lijiayu;
 ctime = 1446195317;
 id = 41;
 "mobile_switch" = 0;
 name = "\U6597\U9c7c\U6bd2\U5976";
 "push_android" = 1;
 "push_ios" = 1;
 "related_id" = "132,4";
 sort = 100;
 status = 0;
 url = "http://staticlive.douyutv.com/upload/room_tag/e139534d69196255a8a870ac35b84ec3.jpg";
 },
 {
 admin = lijiayu;
 ctime = 1446194029;
 id = 35;
 "mobile_switch" = 0;
 name = GTA5;
 "push_android" = 1;
 "push_ios" = 1;
 "related_id" = 19;
 sort = 190;
 status = 0;
 url = "http://staticlive.douyutv.com/upload/room_tag/5b49465cdc5126f53232b2c0b8a41000.jpg";
 }
 );
 };
 error = 0;
 }
 2016-04-14 17:30:34.833 DGCars[40559:846900] 9

 */