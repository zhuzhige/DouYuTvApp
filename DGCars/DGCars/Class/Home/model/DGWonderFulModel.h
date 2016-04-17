//
//  DGWonderFulCellModel.h
//  DGCars
//
//  Created by 米 on 16/4/16.
//  Copyright © 2016年 米. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DGWonderFulModel : NSObject

@property (nonatomic, copy) NSString *cate_id;

@property (nonatomic, copy) NSString *child_id;

@property (nonatomic, copy) NSString *nickname;

@property (nonatomic, copy) NSString *online;

@property (nonatomic, copy) NSString *owner_uid;

@property (nonatomic, copy) NSString *ranktype;

@property (nonatomic, copy) NSString *room_id;

@property (nonatomic, copy) NSString *room_name;

@property (nonatomic, copy) NSString *room_src;

@property (nonatomic, copy) NSString *show_status;

@property (nonatomic, copy) NSString *show_time;

@property (nonatomic, copy) NSString *specific_catalog;

@property (nonatomic, copy) NSString *specific_status;

@property (nonatomic, copy) NSString *subject;

@property (nonatomic, copy) NSString *vod_quality;

- (instancetype)initWithDict:(NSDictionary *)dict;


+ (instancetype)wonderFulWithDict:(NSDictionary *)dict;


@end

/*
 2016-04-16 17:10:27.722 DGCars[53659:1416703] {
 data =     (
 {
 "cate_id" = 195;
 "child_id" = 0;
 nickname = "\U58f0\U97f3\U6559\U7ec3\U5f90\U8001\U5e08";
 online = 6219;
 "owner_uid" = 45276419;
 ranktype = 1;
 "room_id" = 602653;
 "room_name" = "\U58f0\U97f3\U6559\U7ec3\U5f90\U8001\U5e08\U7684\U76f4\U64ad\U95f4";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/602653_160416170836.jpg";
 "show_status" = 1;
 "show_time" = 1460797570;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 136;
 "child_id" = 0;
 nickname = "\U8f66\U5973\U90ce";
 online = 2922;
 "owner_uid" = 41349869;
 ranktype = 0;
 "room_id" = 581384;
 "room_name" = "\U9876\U7ea7\U8c6a\U8f66 \U4ef7\U683c\U4f4e\U5230\U4f60\U4e0d\U61c2";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/581384_160416170837.jpg";
 "show_status" = 1;
 "show_time" = 1460797442;
 "specific_catalog" = chenvlang;
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U4e0a\U6d77\U725b\U5927\U91d1\U724c\U88c5\U673a\U5e97";
 online = 5888;
 "owner_uid" = 28251620;
 ranktype = 0;
 "room_id" = 463938;
 "room_name" = "\U725b\U5f1f\U6280\U5609\U62bd\U5956\U6d3b\U52a8\U5373\U523b\U5f00\U59cb";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/463938_160416170717.jpg";
 "show_status" = 1;
 "show_time" = 1460775613;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U4e0a\U6d77\U5927\U660e\U6d77";
 online = 4650;
 "owner_uid" = 24554625;
 ranktype = 0;
 "room_id" = 424998;
 "room_name" = "\U3010\U5927\U660e\U6512\U673a\U3011\U534f\U8bae\U7206\U70b8\U2192_\U2192/\U88c5\U673a\U538b\U538b\U60ca";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/424998_160416170422.jpg";
 "show_status" = 1;
 "show_time" = 1460789116;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U4e0a\U6d77\U5f90\U5bb6\U6c47\U8001\U59da";
 online = 2683;
 "owner_uid" = 26726859;
 ranktype = 0;
 "room_id" = 444146;
 "room_name" = "\U3010\U8001\U59da\U3011\U4e3a\U5427\U53cb\U76f4\U64ad\U88c5\U673a";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/444146_160416170718.jpg";
 "show_status" = 1;
 "show_time" = 1460773694;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U4e0a\U6d77\U5f90\U5bb6\U6c47\U7ec4\U88c5\U7535\U8111";
 online = 1971;
 "owner_uid" = 26727652;
 ranktype = 0;
 "room_id" = 444708;
 "room_name" = "\U4e0a\U6d77\U80e1\U5b50 \U76f4\U64ad\U88c5\U673a \U8bb2\U89e3\U914d\U7f6e \U7535\U8111\U533b\U751f";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/444708_160416170442.jpg";
 "show_status" = 1;
 "show_time" = 1460775996;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U5b89\U9633\U7535\U8111";
 online = 1513;
 "owner_uid" = 9708663;
 ranktype = 0;
 "room_id" = 416499;
 "room_name" = "\U6597\U9c7c\U6700\U7325\U7410\U7684\U88c5\U57fa\U5978\U5546";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/416499_160416170446.jpg";
 "show_status" = 1;
 "show_time" = 1460770155;
 "specific_catalog" = ayyk;
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U5bd2\U5c71\U5c45\U79d1\U6280";
 online = 1434;
 "owner_uid" = 32236193;
 ranktype = 0;
 "room_id" = 506007;
 "room_name" = "\U9ea6\U7535\U8111\U7684\U57fa\U4f6c\U2192_\U2192 \U5bd2\U5c71\U5c45 \U88c5\U673a\U8d70\U7ebf\U91cd\U64ad";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/506007_160416170925.jpg";
 "show_status" = 1;
 "show_time" = 1460770902;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U867e\U997a\U4ed4\U4ed4";
 online = 1297;
 "owner_uid" = 29099683;
 ranktype = 0;
 "room_id" = 523231;
 "room_name" = "\U300a\U5927\U73a9\U5bb6\U300b\U9ad8\U7aef\U6280\U672f\U4ea4\U6d41\Uff0c\U9020\U5c31\U7cbe\U54c1\U6574\U673a\U3002";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/523231_160416170720.jpg";
 "show_status" = 1;
 "show_time" = 1460774958;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "2\U96f7\U554a";
 online = 1175;
 "owner_uid" = 33239357;
 ranktype = 0;
 "room_id" = 514743;
 "room_name" = "\U3010\U897f\U5b89\U7816\U5382\U30117\U96f712\U96f7/\U5468\U672b\U4f1a\U6c34\U53cb";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/514743_160416170918.jpg";
 "show_status" = 1;
 "show_time" = 1460781809;
 "specific_catalog" = xawd;
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 195;
 "child_id" = 0;
 nickname = uhali;
 online = 1135;
 "owner_uid" = 24149799;
 ranktype = 0;
 "room_id" = 556802;
 "room_name" = "\U5c0f\U6b63\U592a\U5f00\U59cb\U8857\U821e\U4eba\U751f\U5566\Uff01\U5feb\U6765\U56f4\U89c2";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/556802_160416170353.jpg";
 "show_status" = 1;
 "show_time" = 1460794391;
 "specific_catalog" = uhali;
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U79d1\U6280\U7f8e\U5b66\U4e2d\U56fd";
 online = 1034;
 "owner_uid" = 27447102;
 ranktype = 0;
 "room_id" = 452628;
 "room_name" = "16\U65e517\U70b9\U534a  \U9b45\U65cf\U98ce\U96e813\U5e74";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/452628_160416170837.jpg";
 "show_status" = 1;
 "show_time" = 1460797130;
 "specific_catalog" = kejimeixue;
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 193;
 "child_id" = 0;
 nickname = "\U56fd\U670d\U6700\U5f3a\U6b7b\U6b4c";
 online = 1018;
 "owner_uid" = 19728388;
 ranktype = 0;
 "room_id" = 292734;
 "room_name" = "\U521d\U97f3\U672a\U6765\U865a\U62df\U73b0\U5b9e\U52a8\U6f2b\U6e38\U620f";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/292734_160416170926.jpg";
 "show_status" = 1;
 "show_time" = 1460738604;
 "specific_catalog" = mikuvr;
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U5409\U54e5\U7535\U8111\U88c5\U673a";
 online = 914;
 "owner_uid" = 24712587;
 ranktype = 0;
 "room_id" = 453609;
 "room_name" = "\U8ddf\U3010\U5409\U54e5\U3011\U4e00\U8d77\Uff0c\U7ee7\U7eed\U6109\U5feb\U7684\U641e\U673a\Uff01\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/453609_160416170435.jpg";
 "show_status" = 1;
 "show_time" = 1460782686;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U8d85\U9891\U83dc\U9e1f";
 online = 907;
 "owner_uid" = 27293075;
 ranktype = 0;
 "room_id" = 451787;
 "room_name" = "\U3010\U4e0a\U6d77\U5927\U5927\U5e2e\U3011\U7ed9\U673a\U53cb\U76f4\U64ad\U88c5\U673a";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/451787_160416170444.jpg";
 "show_status" = 1;
 "show_time" = 1460773492;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U4e0a\U6d77\U8001\U9648";
 online = 906;
 "owner_uid" = 33400858;
 ranktype = 0;
 "room_id" = 518194;
 "room_name" = "\U4e0a\U6d77\U4e09\U5251\U5ba2\Uff1a\U8001\U9648\Uff0c\U8001\U9a86\Uff0c\U76ae\U76ae\Uff0c\U88c5\U673a\U76f4\U64ad";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/518194_160416170924.jpg";
 "show_status" = 1;
 "show_time" = 1460772294;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U9ed1\U51b0_\U5e0c";
 online = 900;
 "owner_uid" = 846575;
 ranktype = 0;
 "room_id" = 304391;
 "room_name" = "[\U91d1\U79d1\U5609\U79be]\U4f60\U95ee\U6211\U7b54\Uff0c\U5305\U60a8\U6ee1\U610f";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/304391_160416170412.jpg";
 "show_status" = 1;
 "show_time" = 1460790826;
 "specific_catalog" = heibing;
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "80it\U7535\U8111\U7f51";
 online = 824;
 "owner_uid" = 26177703;
 ranktype = 0;
 "room_id" = 434213;
 "room_name" = "\U90d1\U5dde80it\Uff1a\U641e\U673a\U6211\U4eec\U662f\U8ba4\U771f\U7684";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/434213_160416170651.jpg";
 "show_status" = 1;
 "show_time" = 1460791288;
 "specific_catalog" = balingit;
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 136;
 "child_id" = 0;
 nickname = "\U4e1c\U5317\U8f66\U9b54";
 online = 506;
 "owner_uid" = 38683841;
 ranktype = 0;
 "room_id" = 551518;
 "room_name" = "ams,\U65b0\U8f66\U8bc4\Uff0c\U841d\U535c\U62a5\U544a\Uff0c\U89c6\U9891\U64ad\U653e";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/551518_160416170716.jpg";
 "show_status" = 1;
 "show_time" = 1460776835;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 nickname = "\U9694\U58c1\U7684\U738b\U5927\U53d4";
 online = 409;
 "owner_uid" = 14286795;
 ranktype = 0;
 "room_id" = 426510;
 "room_name" = "\U3010\U4ebf\U8bda\U79d1\U6280\U3011\U5e26\U4f60\U8d70\U8fdb\U4fe1\U4ef0\Uff01~\U58d5\U65e0\U4eba\U6027";
 "room_src" = "http://rpic.douyucdn.cn/z1604/16/17/426510_160416170423.jpg";
 "show_status" = 1;
 "show_time" = 1460787940;
 "specific_catalog" = pc666;
 "specific_status" = 1;
 subject = "";
 "vod_quality" = 0;
 }
 );
 error = 0;
 }

 */
