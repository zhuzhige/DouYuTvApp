//
//  DGHomeSquareItemModel.h
//  DGCars
//
//  Created by 米 on 16/4/14.
//  Copyright © 2016年 米. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DGHomeSquareRoomModel;

@interface DGHomeSquareItemModel : NSObject

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *cate_id;

@property (nonatomic, strong) NSArray<DGHomeSquareRoomModel *> *roomlist;


@end

/*
 2016-04-14 16:39:35.309 DGCars[39704:825387] {
 data =     (
 {
 "cate_id" = "homechannel_yqly";
 roomlist =             (
 {
 "cate_id" = 133;
 "child_id" = 0;
 "game_name" = "\U5143\U6c14\U9886\U57df";
 "game_url" = "/directory/game/yqly";
 nickname = zytk99;
 online = 1171;
 "owner_uid" = 28302133;
 "room_id" = 464419;
 "room_name" = "\U53e4\U6708\U5e26\U4f60\U6a2a\U6e21\U957f\U6c5f\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/464419_160414163447.jpg";
 "show_status" = 1;
 "show_time" = 1460617688;
 "specific_catalog" = doplay;
 "specific_status" = 1;
 subject = "";
 url = "/doplay";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 133;
 "child_id" = 0;
 "game_name" = "\U5143\U6c14\U9886\U57df";
 "game_url" = "/directory/game/yqly";
 nickname = "\U9493\U5269";
 online = 1133;
 "owner_uid" = 23728217;
 "room_id" = 540335;
 "room_name" = "\U4e0d\U77e5\U9053\U9493\U4ec0\U4e48\U9c7c\U4e86";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/540335_160414163155.jpg";
 "show_status" = 1;
 "show_time" = 1460621124;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/540335";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 133;
 "child_id" = 0;
 "game_name" = "\U5143\U6c14\U9886\U57df";
 "game_url" = "/directory/game/yqly";
 nickname = "\U4e5d\U827a\U7136\U7136";
 online = 1129;
 "owner_uid" = 27851313;
 "room_id" = 459279;
 "room_name" = "\U51fa\U6765\U901b\U8857\U5c31\U662f\U901b\U5403\U901b\U5403(\Uffe3\U2207\Uffe3)";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/459279_160414163148.jpg";
 "show_status" = 1;
 "show_time" = 1460622686;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/459279";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 133;
 "child_id" = 0;
 "game_name" = "\U5143\U6c14\U9886\U57df";
 "game_url" = "/directory/game/yqly";
 nickname = "lacie\U5c0f\U5b9d\U5b9d";
 online = 1070;
 "owner_uid" = 42539878;
 "room_id" = 575296;
 "room_name" = "\U5c0f\U5b9d\U5b9d\Uff1a15\U5c81\U5927\U59d0\U59d0G\U6740\U624b";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/575296_160414163150.jpg";
 "show_status" = 1;
 "show_time" = 1460621742;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/575296";
 "vod_quality" = 0;
 }
 );
 title = "\U5143\U6c14\U9886\U57df";
 },
 {
 "cate_id" = "homechannel_jjyx";
 roomlist =             (
 {
 "cate_id" = 1;
 "child_id" = 28;
 "game_name" = "\U82f1\U96c4\U8054\U76df";
 "game_url" = "/directory/game/LOL";
 nickname = "riot\U8d5b\U4e8b\U4e8c";
 online = 578553;
 "owner_uid" = 25436380;
 "room_id" = 424559;
 "room_name" = "LPL\U5347\U964d\U7ea7\U8d5bEPA vs OMG";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/424559_160414162611.jpg";
 "show_status" = 1;
 "show_time" = 1460608850;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 url = "/424559";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 33;
 "child_id" = 0;
 "game_name" = "\U7a7f\U8d8a\U706b\U7ebf";
 "game_url" = "/directory/game/CF";
 nickname = "\U7a7f\U8d8a\U706b\U7ebf\U8d5b\U4e8b\U4e13\U7528";
 online = 2094;
 "owner_uid" = 34254168;
 "room_id" = 522798;
 "room_name" = "\U7a7f\U8d8a\U706b\U7ebf\U5b98\U65b9\U623f\U95f4-\U767e\U4e07\U5956\U52b1\U4e3b\U64ad\U62db\U52df\U4e2d\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/522798_160414162614.jpg";
 "show_status" = 1;
 "show_time" = 1460603573;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/522798";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 1;
 "child_id" = 28;
 "game_name" = "\U82f1\U96c4\U8054\U76df";
 "game_url" = "/directory/game/LOL";
 nickname = "Riot\U62f3\U5934";
 online = 1210503;
 "owner_uid" = 19344409;
 "room_id" = 288016;
 "room_name" = "LPL\U5347\U964d\U7ea7\U8d5b EPA vs OMG";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/288016_160414163548.jpg";
 "show_status" = 1;
 "show_time" = 1460608248;
 "specific_catalog" = lpl;
 "specific_status" = 1;
 subject = "";
 url = "/lpl";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 1;
 "child_id" = 28;
 "game_name" = "\U82f1\U96c4\U8054\U76df";
 "game_url" = "/directory/game/LOL";
 nickname = "solofeng\U89e3\U8bf4\U4e36";
 online = 267760;
 "owner_uid" = 22679518;
 "room_id" = 319721;
 "room_name" = "\U5bf9\U4e0d\U8d77\U8fd9\U5c40\U6211\U8981\U8d62";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/319721_160414163540.jpg";
 "show_status" = 1;
 "show_time" = 1460614503;
 "specific_catalog" = lolff;
 "specific_status" = 1;
 subject = "";
 url = "/lolff";
 "vod_quality" = 0;
 }
 );
 title = "\U7ade\U6280\U6e38\U620f";
 },
 {
 "cate_id" = "homechannel_blzq";
 roomlist =             (
 {
 "cate_id" = 5;
 "child_id" = 0;
 "game_name" = "\U9b54\U517d\U4e16\U754c";
 "game_url" = "/directory/game/WOW";
 nickname = "\U516d\U7ec4\U5927\U98deirl";
 online = 1770;
 "owner_uid" = 16992;
 "room_id" = 527;
 "room_name" = "\U55e8\U5440\Uff01&lt;afc1&gt;";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/527_160414163155.jpg";
 "show_status" = 1;
 "show_time" = 1460621123;
 "specific_catalog" = liuzudafei;
 "specific_status" = 0;
 subject = "";
 url = "/527";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 2;
 "child_id" = 0;
 "game_name" = "\U7089\U77f3\U4f20\U8bf4";
 "game_url" = "/directory/game/How";
 nickname = "\U4e0d\U4e8c";
 online = 131977;
 "owner_uid" = 336068;
 "room_id" = 13861;
 "room_name" = "\U4e0d\U4e8c\Uff1a6\U4e2a\U674e\U5976\U5976\Uff0c12\U80dc\U7684\U90a3\U79cd";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/13861_160414163216.jpg";
 "show_status" = 1;
 "show_time" = 1460615287;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 url = "/13861";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 55;
 "child_id" = 0;
 "game_name" = "\U9b54\U517d\U4e89\U9738";
 "game_url" = "/directory/game/mszb";
 nickname = "hayabusa_7";
 online = 26205;
 "owner_uid" = 1878199;
 "room_id" = 209225;
 "room_name" = "nada:\U8d85\U7ea7\U5c0f\U62c9\U8fbe";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/209225_160414163552.jpg";
 "show_status" = 1;
 "show_time" = 1460604212;
 "specific_catalog" = hayabusa;
 "specific_status" = 1;
 subject = "";
 url = "/hayabusa";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 4;
 "child_id" = 0;
 "game_name" = "\U661f\U9645\U4e89\U9738";
 "game_url" = "/directory/game/SC";
 nickname = "\U661f\U9645\U8d5b\U4e8b\U9891\U9053";
 online = 20342;
 "owner_uid" = 19655272;
 "room_id" = 449652;
 "room_name" = "\U6597\U9c7c\U661f\U9645\U5927\U5e08\U8d5b\U6708\U8d5b#1\U6536\U5b98\U6218";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/449652_160414163547.jpg";
 "show_status" = 1;
 "show_time" = 1460609834;
 "specific_catalog" = sctournament;
 "specific_status" = 1;
 subject = "";
 url = "/sctournament";
 "vod_quality" = 0;
 }
 );
 title = "\U66b4\U96ea\U4e13\U533a";
 },
 {
 "cate_id" = "homechannel_zjyx";
 roomlist =             (
 {
 "cate_id" = 155;
 "child_id" = 0;
 "game_name" = "\U7bee\U7403\U6e38\U620f";
 "game_url" = "/directory/game/lqyx";
 nickname = "\U9884\U77e5\U672a\U6765";
 online = 1049;
 "owner_uid" = 1473700;
 "room_id" = 85905;
 "room_name" = "\U65e5\U5929\Uff1a2K16\Uff0c\U4eca\U5929\U6211\U4eec\U90fd\U662f\U79d1\U5bc6\Uff0c\U81f4\U656c\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/85905_160414162604.jpg";
 "show_status" = 1;
 "show_time" = 1460614783;
 "specific_catalog" = future;
 "specific_status" = 0;
 subject = "";
 url = "/85905";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 19;
 "child_id" = 0;
 "game_name" = "\U4e3b\U673a\U6e38\U620f";
 "game_url" = "/directory/game/TVgame";
 nickname = "\U8001\U4f73";
 online = 33708;
 "owner_uid" = 840990;
 "room_id" = 35651;
 "room_name" = "\U3010\U8001\U4f73\U3011\U8d28\U91cf\U6548\U5e943 \U5973\U659c\U5761\U603b\U7b97\U62ef\U6551\U5b8c\U4e86";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/35651_160414163547.jpg";
 "show_status" = 1;
 "show_time" = 1460609780;
 "specific_catalog" = laojia95;
 "specific_status" = 1;
 subject = "";
 url = "/laojia95";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 19;
 "child_id" = 0;
 "game_name" = "\U4e3b\U673a\U6e38\U620f";
 "game_url" = "/directory/game/TVgame";
 nickname = "\U6e29\U5dde\U5c0f\U6ce1\U6ce1";
 online = 25829;
 "owner_uid" = 2992433;
 "room_id" = 85963;
 "room_name" = "GTA5:\U5f00\U5fc3\U5c31\U597d\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/85963_160414162609.jpg";
 "show_status" = 1;
 "show_time" = 1460610433;
 "specific_catalog" = wzpg;
 "specific_status" = 0;
 subject = "";
 url = "/85963";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 19;
 "child_id" = 0;
 "game_name" = "\U4e3b\U673a\U6e38\U620f";
 "game_url" = "/directory/game/TVgame";
 nickname = "\U5341\U4e09\U4e09\U4e09";
 online = 12284;
 "owner_uid" = 2432220;
 "room_id" = 69752;
 "room_name" = "\U5341\U4e09\Uff1a\U9b423\U5f00\U8352\U6296M\U4ff1\U4e50\U90e8";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/69752_160414162616.jpg";
 "show_status" = 1;
 "show_time" = 1460601321;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/69752";
 "vod_quality" = 0;
 }
 );
 title = "\U4e3b\U673a\U6e38\U620f";
 },
 {
 "cate_id" = "homechannel_wlyx";
 roomlist =             (
 {
 "cate_id" = 40;
 "child_id" = 0;
 "game_name" = "\U5730\U4e0b\U57ce\U4e0e\U52c7\U58eb";
 "game_url" = "/directory/game/DNF";
 nickname = "\U90aa\U6559\U53d1\U54e5";
 online = 8401;
 "owner_uid" = 13772947;
 "room_id" = 533175;
 "room_name" = "\U2605\U53d1\U54e5\U2605\Uff1a\U5982\U679c\U6211\U662fDJ";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/533175_160414163219.jpg";
 "show_status" = 1;
 "show_time" = 1460613897;
 "specific_catalog" = fg888;
 "specific_status" = 1;
 subject = "";
 url = "/fg888";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 59;
 "child_id" = 0;
 "game_name" = "\U5929\U6daf\U660e\U6708\U5200";
 "game_url" = "/directory/game/tianya";
 nickname = "\U5b54\U96c0\U7fce\U4e36\U7fbd\U5c0f\U5c0f";
 online = 4418;
 "owner_uid" = 1070822;
 "room_id" = 58260;
 "room_name" = "\U7fbd\U5927\U70ae\Uff1a\U54b8\U9c7c\U4e3b\U64ad~";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/58260_160414163209.jpg";
 "show_status" = 1;
 "show_time" = 1460618452;
 "specific_catalog" = bigtigerb;
 "specific_status" = 1;
 subject = "";
 url = "/bigtigerb";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 90;
 "child_id" = 0;
 "game_name" = "\U8dd1\U8dd1\U5361\U4e01\U8f66";
 "game_url" = "/directory/game/Popkart";
 nickname = "\U4e16\U5bb6\U5c0f\U67d2";
 online = 1209;
 "owner_uid" = 36157652;
 "room_id" = 567861;
 "room_name" = "\U54ea\U4e2a\U9f9f\U513f\U8bf4\U7684\U98de\U8f66\U5c31\U4e0d\U80fd\U518d\U8fd9\U91cc\U73a9";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/567861_160414162558.jpg";
 "show_status" = 1;
 "show_time" = 1460618519;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/567861";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 40;
 "child_id" = 0;
 "game_name" = "\U5730\U4e0b\U57ce\U4e0e\U52c7\U58eb";
 "game_url" = "/directory/game/DNF";
 nickname = "WX\U4e36\U6b23\U5d3d";
 online = 842;
 "owner_uid" = 16030870;
 "room_id" = 250540;
 "room_name" = "\U7b2c\U4e00\U673a\U68b0\U5f52\U4f4d\Uff01\U77ac\U95f4\U7206\U70b8\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/250540_160414163520.jpg";
 "show_status" = 1;
 "show_time" = 1460622895;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/250540";
 "vod_quality" = 0;
 }
 );
 title = "\U7f51\U7edc\U6e38\U620f";
 },
 {
 "cate_id" = "homechannel_xxyx";
 roomlist =             (
 {
 "cate_id" = 26;
 "child_id" = 0;
 "game_name" = "\U6000\U65e7\U6e38\U620f";
 "game_url" = "/directory/game/classic";
 nickname = "\U5357\U6781\U732b\U7684\U773c\U6cea";
 online = 1431;
 "owner_uid" = 1648119;
 "room_id" = 67205;
 "room_name" = "FC\Uff0c\U771f\U7d2f\U554a\Uff0c\U8fd8\U6709\U8c01\Uff1f\Uff1f";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/67205_160414162617.jpg";
 "show_status" = 1;
 "show_time" = 1460598906;
 "specific_catalog" = Nanjimao;
 "specific_status" = 0;
 subject = "";
 url = "/67205";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 26;
 "child_id" = 0;
 "game_name" = "\U6000\U65e7\U6e38\U620f";
 "game_url" = "/directory/game/classic";
 nickname = "\U7ea2\U8b66\U4e4b\U795e";
 online = 1782;
 "owner_uid" = 36321948;
 "room_id" = 533695;
 "room_name" = "\U7ea2\U8b66\U5171\U8f89\U6392\U4f4d\U8d5b\U7cbe\U5f69\U8fdb\U884c\U4e2d\U770b\U7684\U90fd\U901f\U5ea6\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/533695_160414162607.jpg";
 "show_status" = 1;
 "show_time" = 1460612351;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/533695";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 26;
 "child_id" = 0;
 "game_name" = "\U6000\U65e7\U6e38\U620f";
 "game_url" = "/directory/game/classic";
 nickname = "\U5b8b\U5148\U751f";
 online = 8804;
 "owner_uid" = 222424;
 "room_id" = 6906;
 "room_name" = "\U4e09\U56fd\U6218\U8bb0\U7cfb\U5217 \U544a\U522b\U5355\U8eab\U624b\U901f30\U5e74";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/6906_160414162608.jpg";
 "show_status" = 1;
 "show_time" = 1460611284;
 "specific_catalog" = brothers;
 "specific_status" = 1;
 subject = "";
 url = "/brothers";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 26;
 "child_id" = 0;
 "game_name" = "\U6000\U65e7\U6e38\U620f";
 "game_url" = "/directory/game/classic";
 nickname = "\U4e1c\U65b9\U795e\U660e";
 online = 2182;
 "owner_uid" = 2708552;
 "room_id" = 109810;
 "room_name" = "\U9006\U8f6c\U88c1\U52245 \U505a\U4e8b\U8981\U6709\U59cb\U6709\U7ec8\U3002";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/109810_160414163219.jpg";
 "show_status" = 1;
 "show_time" = 1460613432;
 "specific_catalog" = wuxzy;
 "specific_status" = 0;
 subject = "";
 url = "/109810";
 "vod_quality" = 0;
 }
 );
 title = "\U4f11\U95f2\U6e38\U620f";
 },
 {
 "cate_id" = "homechannel_sjyx";
 roomlist =             (
 {
 "cate_id" = 190;
 "child_id" = 31;
 "game_name" = "\U7687\U5ba4\U6218\U4e89";
 "game_url" = "/directory/game/hszz";
 nickname = "VJ\U6770";
 online = 35914;
 "owner_uid" = 13874363;
 "room_id" = 232887;
 "room_name" = "\U53ea\U8bb0\U513f\U65f6\U5b09\U65f6\U5929\Uff0c\U4e0d\U5fcd\U56de\U671b\U7ecf\U4f59\U5e74";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/232887_160414163228.jpg";
 "show_status" = 1;
 "show_time" = 1460607536;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/232887";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 196;
 "child_id" = 19;
 "game_name" = "\U706b\U5f71\U5fcd\U8005\U624b\U6e38";
 "game_url" = "/directory/game/hyrz";
 nickname = "\U5927\U836f\U74f6";
 online = 1673;
 "owner_uid" = 44261853;
 "room_id" = 589648;
 "room_name" = "\U836f\U74f6\U76f4\U64ad\U95f4-\U672a\U6765\U4e3b\U6d41\U4f1a\U662f\U4ec0\U4e48";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/589648_160414163226.jpg";
 "show_status" = 1;
 "show_time" = 1460609742;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/589648";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 30;
 "child_id" = 16;
 "game_name" = "\U7efc\U5408\U624b\U6e38";
 "game_url" = "/directory/game/phone";
 nickname = "\U5317\U4eac\U6d6a\U77f3\U5934";
 online = 143;
 "owner_uid" = 4997559;
 "room_id" = 105051;
 "room_name" = "\U3010HOC\U3011\U4eca\U591c\U80fd\U5426\U56de\U9ec4\U91d1~";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/105051_160414163430.jpg";
 "show_status" = 1;
 "show_time" = 1460621910;
 "specific_catalog" = pit;
 "specific_status" = 1;
 subject = "";
 url = "/pit";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 30;
 "child_id" = 16;
 "game_name" = "\U7efc\U5408\U624b\U6e38";
 "game_url" = "/directory/game/phone";
 nickname = zhanghao326;
 online = 123;
 "owner_uid" = 14222483;
 "room_id" = 253734;
 "room_name" = "\U3010\U516b\U6b21\U90ce\U3011\U72c2\U91ce\U98d9\U8f668~\U6781\U901f\U51cc\U4e91";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/253734_160414163447.jpg";
 "show_status" = 1;
 "show_time" = 1460618391;
 "specific_catalog" = bacilang;
 "specific_status" = 1;
 subject = "";
 url = "/bacilang";
 "vod_quality" = 0;
 }
 );
 title = "\U624b\U673a\U6e38\U620f";
 },
 {
 "cate_id" = "homechannel_yzzr";
 roomlist =             (
 {
 "cate_id" = 175;
 "child_id" = 0;
 "game_name" = "\U9c7c\U97f3\U7ed5\U6881";
 "game_url" = "/directory/game/yyrl";
 nickname = "riky\U9152\U7ea2";
 online = 2113;
 "owner_uid" = 25771778;
 "room_id" = 432882;
 "room_name" = "\U7075\U5f02\U6050\U6016\U60ac\U7591\U7535\U53f0";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/432882_160414163553.jpg";
 "show_status" = 1;
 "show_time" = 1460600800;
 "specific_catalog" = riky;
 "specific_status" = 1;
 subject = "";
 url = "/riky";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 174;
 "child_id" = 0;
 "game_name" = "\U6b21\U5143\U58c1\U5792";
 "game_url" = "/directory/game/cybl";
 nickname = "\U4e2d\U534e\U821e\U59ec\U540c\U840c\U4e36\U62d6\U62d6";
 online = 1673;
 "owner_uid" = 13498173;
 "room_id" = 272907;
 "room_name" = "\U3010\U5b85\U821e\U5ba3\U4f20\U3011\U5373\U5c06\U51fa\U9f99\U5d0e\U55b5\U624b\U529e\U3010\U4e8c\U6b21\U5143\U3011";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/272907_160414163556.jpg";
 "show_status" = 1;
 "show_time" = 1460595941;
 "specific_catalog" = QAQ2333;
 "specific_status" = 1;
 subject = "";
 url = "/QAQ2333";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 174;
 "child_id" = 0;
 "game_name" = "\U6b21\U5143\U58c1\U5792";
 "game_url" = "/directory/game/cybl";
 nickname = "\U6b66\U6c49\U7684\U9a6c\U53d4\U53d4";
 online = 1362;
 "owner_uid" = 39767531;
 "room_id" = 567695;
 "room_name" = "\U3010\U8fde\U82db\U3011\U62b1\U7740\U718a\U718a\U61d2\U6563\U7684\U4e0b\U5348";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/567695_160414162604.jpg";
 "show_status" = 1;
 "show_time" = 1460615182;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/567695";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 174;
 "child_id" = 0;
 "game_name" = "\U6b21\U5143\U58c1\U5792";
 "game_url" = "/directory/game/cybl";
 nickname = "71\U5c0f\U670b\U53cb";
 online = 1173;
 "owner_uid" = 28967643;
 "room_id" = 551729;
 "room_name" = "\U79d1\U6bd4\U66fc\U8d70-\U81f4\U6211\U4eec\U901d\U53bb\U7684\U9752\U6625";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/551729_160414163530.jpg";
 "show_status" = 1;
 "show_time" = 1460619422;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/551729";
 "vod_quality" = 0;
 }
 );
 title = "\U5fa1\U5b85\U804c\U4eba";
 },
 {
 "cate_id" = "homechannel_ywkj";
 roomlist =             (
 {
 "cate_id" = 136;
 "child_id" = 0;
 "game_name" = "\U73a9\U6c7d\U8f66";
 "game_url" = "/directory/game/car";
 nickname = "\U5c0f\U5c0f\U52a0\U83f2\U732a";
 online = 2910;
 "owner_uid" = 37905296;
 "room_id" = 551558;
 "room_name" = "\U6597\U9c7c\U6c7d\U8f66\U9891\U9053";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/551558_160414163559.jpg";
 "show_status" = 1;
 "show_time" = 1460495240;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 url = "/551558";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 115;
 "child_id" = 0;
 "game_name" = "\U73a9\U91d1\U878d";
 "game_url" = "/directory/game/Financialplanning";
 nickname = "\U67abMaple";
 online = 2564;
 "owner_uid" = 2837762;
 "room_id" = 79964;
 "room_name" = "\U4e00\U4ebf\U5b9e\U76d8\Uff0c\U76c8\U4e8f\U540c\U6e90";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/79964_160414162620.jpg";
 "show_status" = 1;
 "show_time" = 1460508304;
 "specific_catalog" = agu;
 "specific_status" = 1;
 subject = "";
 url = "/agu";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 "game_name" = "\U73a9\U6570\U7801";
 "game_url" = "/directory/game/wsm";
 nickname = "\U5bd2\U5c71\U5c45\U79d1\U6280";
 online = 1420;
 "owner_uid" = 32236193;
 "room_id" = 506007;
 "room_name" = "\U9ea6\U7535\U8111\U7684\U57fa\U4f6c\U2192_\U2192 \U5bd2\U5c71\U5c45 \U4e27\U5c38\U6e38\U620f\U6d4b\U8bd5";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/506007_160414163555.jpg";
 "show_status" = 1;
 "show_time" = 1460598643;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/506007";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 "game_name" = "\U73a9\U6570\U7801";
 "game_url" = "/directory/game/wsm";
 nickname = "\U4e0a\U6d77\U725b\U5927\U91d1\U724c\U88c5\U673a\U5e97";
 online = 1418;
 "owner_uid" = 28251620;
 "room_id" = 463938;
 "room_name" = "\U4e0a\U6d77\U725b\U5927\U91d1\U724c\U88c5\U673a\U5e97";
 "room_src" = "http://rpic.douyucdn.cn/z1604/14/16/463938_160414163553.jpg";
 "show_status" = 1;
 "show_time" = 1460602371;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/463938";
 "vod_quality" = 0;
 }
 );
 title = "\U9c7c\U73a9\U79d1\U6280";
 }
 );
 error = 0;
 }
 2016-04-14 16:39:41.465 DGCars[39704:825387] 0

 */