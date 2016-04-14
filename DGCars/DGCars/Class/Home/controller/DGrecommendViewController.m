//
//  DGrecommendViewController.m
//  DGCars
//
//  Created by 米 on 16/4/9.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGrecommendViewController.h"
#import "DGHomeRoundCell.h"
#import "DGHomeSquareCell.h"
#import "DGHomeRoundModel.h"
#import "DGHeadItemModel.h"
#import "DGHomeRoundItemModel.h"
#import "DGHomeSquareRoomModel.h"
#import "DGHomeSquareItemModel.h"
#import <AFNetworking.h>
#import <SDCycleScrollView.h>
#import <MJRefresh.h>

@interface DGrecommendViewController ()<UITableViewDataSource,UITableViewDelegate,SDCycleScrollViewDelegate>
@property(nonatomic, strong) NSMutableArray *roundData;
@property(nonatomic, strong) NSMutableArray *squareData;
@property(nonatomic, strong) NSMutableArray *headData;


//头部滚动视图
@property(nonatomic, strong) SDCycleScrollView *headerView;


@end

@implementation DGrecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    [self setupTableView];
    [self setupHeadView];
    [self setupRefresh];
    [self loadSquareData];
    [self loadRoundData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupTableView
{
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //首行圆形cell
    [self.tableView registerClass:[DGHomeRoundCell class] forCellReuseIdentifier:@"round"];
    //其余方形cell
    [self.tableView registerClass:[DGHomeSquareCell class] forCellReuseIdentifier:@"square"];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)setupHeadView
{
    SDCycleScrollView *headerView = [[SDCycleScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    headerView.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    headerView.currentPageDotColor = RGBCOLOR(255, 125, 0);
    headerView.autoScrollTimeInterval = 3.0;
    _headerView = headerView;
    self.tableView.tableHeaderView = headerView;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    AFHTTPSessionManager * mgr = [AFHTTPSessionManager manager];
    [mgr GET:kDGHeadViewUrl parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        _headData = [DGHeadItemModel mj_objectArrayWithKeyValuesArray:responseObject[@"data"]];
        NSMutableArray *imageURLarray = [NSMutableArray array];
        NSMutableArray *titleArray = [NSMutableArray array];
        for (DGHeadItemModel *model in _headData) {
            [imageURLarray addObject:model.pic_url];
            [titleArray addObject:model.title];
            headerView.imageURLStringsGroup = imageURLarray;
            headerView.titlesGroup = titleArray;
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"setupHeadView--error");
    }];
});

}

- (void)setupRefresh
{
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refresh)];

}

- (void)refresh
{
    [self.tableView.mj_header endRefreshing];


}

- (void) loadRoundData
{
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    [mgr GET:kDGRoundUrl parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        _roundData = [DGHomeRoundItemModel mj_objectArrayWithKeyValuesArray:responseObject[@"data"]];
        //        DGHomeSquareItemModel *mod = _squareData[1];
        //        DGHomeSquareRoomModel *room = mod.roomlist[1];
        //刷新cell
        
        NSLog(@"_roundData %ld",_roundData.count);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void) loadSquareData
{
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    [mgr GET:kMainUrl parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        _squareData = [DGHomeSquareItemModel mj_objectArrayWithKeyValuesArray:responseObject[@"data"]];
        //        DGHomeSquareItemModel *mod = _squareData[1];
        //        DGHomeSquareRoomModel *room = mod.roomlist[1];
        //刷新cell
        
        NSLog(@"_squareData %ld",_squareData.count);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

#pragma mark <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return [[UITableViewCell alloc]init];
//    if (indexPath.section == 0) {//第一组
//        DGHomeRoundCell *cell = [tableView dequeueReusableCellWithIdentifier:@"round"];
//        [cell roundCellWith:_roundData];
//        return cell;
//    }else{
//        DGHomeSquareCell *cell = [tableView dequeueReusableCellWithIdentifier:@"square"];
////        [cell squareCellWith:_squareData[indexPath.section - 1]];
//        return cell;
//    }
    
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end

/*
 2016-04-13 16:10:19.400 DGCars[8077:504919] {
 data =     (
 {
 "cate_id" = "homechannel_yqly";
 roomlist =             (
 {
 "cate_id" = 133;
 "child_id" = 0;
 "game_name" = "\U5143\U6c14\U9886\U57df";
 "game_url" = "/directory/game/yqly";
 nickname = "douyuTV\U4e00\U767d\U6d69";
 online = 2379;
 "owner_uid" = 9850367;
 "room_id" = 232786;
 "room_name" = "\U767d\U6d69\Uff1a\U65e5\U5e38\U70b8\U4e32 \U559d\U8d77\U6765\Uff01\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/232786_160413160020.jpg";
 "show_status" = 1;
 "show_time" = 1460534234;
 "specific_catalog" = baihao;
 "specific_status" = 1;
 subject = "";
 url = "/baihao";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 133;
 "child_id" = 0;
 "game_name" = "\U5143\U6c14\U9886\U57df";
 "game_url" = "/directory/game/yqly";
 nickname = "\U6768\U665a";
 online = 1990;
 "owner_uid" = 1500601;
 "room_id" = 276488;
 "room_name" = "\U6768\U665a\Uff1a\U552f\U7f8e\U98df\U4e0e\U7231\U4e0d\U53ef\U8f9c\U8d1f^0^";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/276488_160413160051.jpg";
 "show_status" = 1;
 "show_time" = 1460524431;
 "specific_catalog" = yangwan;
 "specific_status" = 1;
 subject = "";
 url = "/yangwan";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 133;
 "child_id" = 0;
 "game_name" = "\U5143\U6c14\U9886\U57df";
 "game_url" = "/directory/game/yqly";
 nickname = "\U4e00\U5251\U516d\U5343\U91cc";
 online = 1769;
 "owner_uid" = 16025251;
 "room_id" = 251769;
 "room_name" = "\U96f7\U9706\U753b\U5ba4-\U624b\U7ed8\U5251\U4e09";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/251769_160413160737.jpg";
 "show_status" = 1;
 "show_time" = 1460530568;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/251769";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 133;
 "child_id" = 0;
 "game_name" = "\U5143\U6c14\U9886\U57df";
 "game_url" = "/directory/game/yqly";
 nickname = Q17ceea95de43cff6b;
 online = 1754;
 "owner_uid" = 32581453;
 "room_id" = 548605;
 "room_name" = "\U767d\U5e08\U5085 \U65e5\U5e38\U9f99\U867e\U5916\U5356";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/548605_160413160040.jpg";
 "show_status" = 1;
 "show_time" = 1460529872;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/548605";
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
 nickname = lm0037;
 online = 32172;
 "owner_uid" = 4672867;
 "room_id" = 497592;
 "room_name" = "\U963f\U654f\Uff1a\U56fd\U670d\U7b2c\U4e00\U4e0a\U5355\U5976\U5988 \U6211\U81ea\U5df1\U90fd\U5bb3\U6015";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/497592_160413160100.jpg";
 "show_status" = 1;
 "show_time" = 1460519885;
 "specific_catalog" = leimin;
 "specific_status" = 1;
 subject = "";
 url = "/leimin";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 3;
 "child_id" = 0;
 "game_name" = DOTA2;
 "game_url" = "/directory/game/DOTA2";
 nickname = "\U62d2\U7edd\U8005sss";
 online = 13820;
 "owner_uid" = 21465303;
 "room_id" = 562483;
 "room_name" = "8000\U5355\U6392\U4e0b\U5206";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/562483_160413160731.jpg";
 "show_status" = 1;
 "show_time" = 1460531967;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/562483";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 1;
 "child_id" = 28;
 "game_name" = "\U82f1\U96c4\U8054\U76df";
 "game_url" = "/directory/game/LOL";
 nickname = Notlaughinggirl;
 online = 11255;
 "owner_uid" = 241911;
 "room_id" = 8557;
 "room_name" = "\U827e\U7237\Uff1a\U6211\U9700\U8981\U4e00\U5f20\U9632\U5751\U7b26\U3002";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/8557_160413160339.jpg";
 "show_status" = 1;
 "show_time" = 1460532810;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 url = "/8557";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 3;
 "child_id" = 0;
 "game_name" = DOTA2;
 "game_url" = "/directory/game/DOTA2";
 nickname = "a\U6d77\U7687\U7259";
 online = 6312;
 "owner_uid" = 8743136;
 "room_id" = 181786;
 "room_name" = "\U6d77\U7687\U7259\Uff1a\U4f60\U7684\U597d\U53cbDJ\U554a\U7259\U4e0a\U7ebf\U4e86";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/181786_160413160028.jpg";
 "show_status" = 1;
 "show_time" = 1460532235;
 "specific_catalog" = adios;
 "specific_status" = 1;
 subject = "";
 url = "/adios";
 "vod_quality" = 0;
 }
 );
 title = "\U7ade\U6280\U6e38\U620f";
 },
 {
 "cate_id" = "homechannel_blzq";
 roomlist =             (
 {
 "cate_id" = 2;
 "child_id" = 0;
 "game_name" = "\U7089\U77f3\U4f20\U8bf4";
 "game_url" = "/directory/game/How";
 nickname = "\U4e24\U4eea\U672a\U5a1c\U4e36";
 online = 18978;
 "owner_uid" = 11222435;
 "room_id" = 214786;
 "room_name" = "\U810f\U7267\U3001\U6697\U7267\U3001\U6838\U5f39\U7267\Uff0c\U671b\U519b\U5e08\U6307\U70b9~";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/214786_160413160343.jpg";
 "show_status" = 1;
 "show_time" = 1460532385;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 url = "/214786";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 2;
 "child_id" = 0;
 "game_name" = "\U7089\U77f3\U4f20\U8bf4";
 "game_url" = "/directory/game/How";
 nickname = "\U5c0f\U592b\U5b50";
 online = 3820;
 "owner_uid" = 511865;
 "room_id" = 57782;
 "room_name" = "\U5b97\U5e08\U7ea7\U7ade\U6280\U573a\Uff0c\U770b\U5b8c\U5c31\U80fd12\U80dc\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/15/57782_160413155615.jpg";
 "show_status" = 1;
 "show_time" = 1460523385;
 "specific_catalog" = hearthstone;
 "specific_status" = 1;
 subject = "";
 url = "/hearthstone";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 2;
 "child_id" = 0;
 "game_name" = "\U7089\U77f3\U4f20\U8bf4";
 "game_url" = "/directory/game/How";
 nickname = "\U4e0d\U4e8c";
 online = 176775;
 "owner_uid" = 336068;
 "room_id" = 13861;
 "room_name" = "\U4e0d\U4e8c\Uff1a\U87ba\U4e1d\U53cc\U78b0\U78b0\U9f99\U6cd5\Uff0c12\U80dc\U7684\U90a3\U79cd";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/13861_160413160047.jpg";
 "show_status" = 1;
 "show_time" = 1460528093;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 url = "/13861";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 2;
 "child_id" = 0;
 "game_name" = "\U7089\U77f3\U4f20\U8bf4";
 "game_url" = "/directory/game/How";
 nickname = "\U53ea\U6709\U5341\U4e94\U5c81\U7684\U6d9b\U59b9";
 online = 22168;
 "owner_uid" = 558903;
 "room_id" = 32892;
 "room_name" = "\U6d9b\U59b9\Uff1a2\U78b0\U78b0\U6bcd\U9e213\U523a\U6740\Uff0c";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/32892_160413160038.jpg";
 "show_status" = 1;
 "show_time" = 1460530208;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 url = "/32892";
 "vod_quality" = 0;
 }
 );
 title = "\U66b4\U96ea\U4e13\U533a";
 },
 {
 "cate_id" = "homechannel_zjyx";
 roomlist =             (
 {
 "cate_id" = 19;
 "child_id" = 0;
 "game_name" = "\U4e3b\U673a\U6e38\U620f";
 "game_url" = "/directory/game/TVgame";
 nickname = q3w2q1;
 online = 1581;
 "owner_uid" = 89161;
 "room_id" = 93773;
 "room_name" = "\U5c0fm\U9ed1\U6697\U4e4b\U9b423 \U4eba\U4e0d\U4f5c\U6b7b\U5984\U5c11\U5e74";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/93773_160413160408.jpg";
 "show_status" = 1;
 "show_time" = 1460523586;
 "specific_catalog" = mtyan;
 "specific_status" = 1;
 subject = "";
 url = "/mtyan";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 19;
 "child_id" = 0;
 "game_name" = "\U4e3b\U673a\U6e38\U620f";
 "game_url" = "/directory/game/TVgame";
 nickname = "\U6587\U827a\U5c11\U5973\U6dd1\U5973\U4f73";
 online = 2618;
 "owner_uid" = 2093265;
 "room_id" = 570284;
 "room_name" = "\U6dd1\U5973\U4f73\Uff1a\U7f8e\U56fd\U672b\U65e5\U2665\U89c1\U8fc7\U5c18\U57c3\U63a9\U57cb\U57ce\U5821";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/15/570284_160413155228.jpg";
 "show_status" = 1;
 "show_time" = 1460529203;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/570284";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 44;
 "child_id" = 0;
 "game_name" = "\U6211\U7684\U4e16\U754c";
 "game_url" = "/directory/game/MC";
 nickname = "\U8449\U842c\U6e05King";
 online = 716;
 "owner_uid" = 3841481;
 "room_id" = 281311;
 "room_name" = "\U7f57\U4f2f\U7279\Uff1a\U56fd\U9645\U5316\U5927\U90fd\U5e02\U7684\U89c4\U5212\U65c5\U7a0b";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/281311_160413160039.jpg";
 "show_status" = 1;
 "show_time" = 1460530079;
 "specific_catalog" = remember;
 "specific_status" = 1;
 subject = "";
 url = "/remember";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 155;
 "child_id" = 0;
 "game_name" = "\U7bee\U7403\U6e38\U620f";
 "game_url" = "/directory/game/lqyx";
 nickname = "\U9884\U77e5\U672a\U6765";
 online = 1509;
 "owner_uid" = 1473700;
 "room_id" = 85905;
 "room_name" = "\U65e5\U5929\Uff1a2K16\Uff0c\U6211\U5f00\U51fa\U4e862\U94bb\U79d12\U73af\U73af2\U6876";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/15/85905_160413155609.jpg";
 "show_status" = 1;
 "show_time" = 1460528427;
 "specific_catalog" = future;
 "specific_status" = 0;
 subject = "";
 url = "/85905";
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
 nickname = "\U5c0f\U9ea6DNF\U76f4\U64ad";
 online = 2976;
 "owner_uid" = 41985997;
 "room_id" = 570936;
 "room_name" = "\U9ea6\U9ea6\Uff1a\U5b89\U56fe\U6069\U5212\U6c34\U6559\U5b6620\U4eba\U7adf\U53ef\U4ee5\U8fd9\U6837\U7b80\U5355";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/570936_160413160410.jpg";
 "show_status" = 1;
 "show_time" = 1460522161;
 "specific_catalog" = maixiaorui;
 "specific_status" = 1;
 subject = "";
 url = "/maixiaorui";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 59;
 "child_id" = 0;
 "game_name" = "\U5929\U6daf\U660e\U6708\U5200";
 "game_url" = "/directory/game/tianya";
 nickname = "\U5929\U624d\U5c0f\U8d6b\U841d";
 online = 2585;
 "owner_uid" = 22346360;
 "room_id" = 328213;
 "room_name" = "\U795e\U5a01\U8bba\U5251\Uff0c\U5316\U5883\U6253\U7684\U98de\U8d77";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/328213_160413160036.jpg";
 "show_status" = 1;
 "show_time" = 1460530834;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/328213";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 40;
 "child_id" = 0;
 "game_name" = "\U5730\U4e0b\U57ce\U4e0e\U52c7\U58eb";
 "game_url" = "/directory/game/DNF";
 nickname = "\U7537\U738b\U78ca\U54e5";
 online = 2292;
 "owner_uid" = 11355891;
 "room_id" = 216672;
 "room_name" = "\U300c\U7537\U738b\U78ca\U300d\U665a\U4e0a\U6211\U4e0d\U5728\Uff0c\U4e0b\U5348\U64ad\U4e00\U4f1a";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/216672_160413160333.jpg";
 "show_status" = 1;
 "show_time" = 1460533969;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 url = "/216672";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 90;
 "child_id" = 0;
 "game_name" = "\U8dd1\U8dd1\U5361\U4e01\U8f66";
 "game_url" = "/directory/game/Popkart";
 nickname = beckerlng;
 online = 15;
 "owner_uid" = 9514053;
 "room_id" = 313591;
 "room_name" = "\U5b9e\U529b\U5305\U516b\Uff01\Uff01\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/313591_160413160026.jpg";
 "show_status" = 1;
 "show_time" = 1460533049;
 "specific_catalog" = beckerlng;
 "specific_status" = 1;
 subject = "";
 url = "/beckerlng";
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
 nickname = "\U5b8b\U5148\U751f";
 online = 13549;
 "owner_uid" = 222424;
 "room_id" = 6906;
 "room_name" = "\U4e09\U56fd\U6218\U8bb0\U7cfb\U5217 \U544a\U522b\U5355\U8eab\U624b\U901f30\U5e74";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/6906_160413160420.jpg";
 "show_status" = 1;
 "show_time" = 1460511099;
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
 nickname = "FC\U8001\U5f0a";
 online = 7969;
 "owner_uid" = 1385752;
 "room_id" = 60651;
 "room_name" = "FC\U8001\U5f0a\U76f4\U64ad\U95f4";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/60651_160413160419.jpg";
 "show_status" = 1;
 "show_time" = 1460512640;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/60651";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 26;
 "child_id" = 0;
 "game_name" = "\U6000\U65e7\U6e38\U620f";
 "game_url" = "/directory/game/classic";
 nickname = "\U96f6\U523a\U9752";
 online = 6492;
 "owner_uid" = 233516;
 "room_id" = 7775;
 "room_name" = "\U5c0f\U534e\Uff1a\U613f\U751c\U6c64\U6ca1\U52a0\U63a5\U5e01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/15/7775_160413155256.jpg";
 "show_status" = 1;
 "show_time" = 1460003710;
 "specific_catalog" = ciqing;
 "specific_status" = 1;
 subject = "";
 url = "/ciqing";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 14;
 "child_id" = 0;
 "game_name" = "\U4e09\U56fd\U6740";
 "game_url" = "/directory/game/sanguosha";
 nickname = "\U96ea\U543b\U6155\U6155";
 online = 112;
 "owner_uid" = 39523791;
 "room_id" = 550327;
 "room_name" = "\U627e\U4e2a\U80fd\U966a\U4f60\U4e00\U8d77\U9017\U6bd4\U7684\U4eba\U6709\U591a\U91cd\U8981\Uff01";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/550327_160413160419.jpg";
 "show_status" = 1;
 "show_time" = 1460508070;
 "specific_catalog" = "";
 "specific_status" = 1;
 subject = "";
 url = "/550327";
 "vod_quality" = 0;
 }
 );
 title = "\U4f11\U95f2\U6e38\U620f";
 },
 {
 "cate_id" = "homechannel_sjyx";
 roomlist =             (
 {
 "cate_id" = 196;
 "child_id" = 19;
 "game_name" = "\U706b\U5f71\U5fcd\U8005\U624b\U6e38";
 "game_url" = "/directory/game/hyrz";
 nickname = "ice\U79cb\U98ce";
 online = 12232;
 "owner_uid" = 36058082;
 "room_id" = 535534;
 "room_name" = "[\U79cb\U98ce]\U706b\U5f71\U624b\U6e38\Uff0c\U5a31\U4e50\U578b\U7ffb\U8f66\U4e3b\U64ad";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/535534_160413160046.jpg";
 "show_status" = 1;
 "show_time" = 1460527941;
 "specific_catalog" = qiu0814;
 "specific_status" = 1;
 subject = "";
 url = "/qiu0814";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 30;
 "child_id" = 21;
 "game_name" = "\U7efc\U5408\U624b\U6e38";
 "game_url" = "/directory/game/phone";
 nickname = "\U6218\U56fd\U5927\U5c06\U519b";
 online = 1688;
 "owner_uid" = 9519445;
 "room_id" = 299441;
 "room_name" = "\U624b\U6e38\U7b2c\U4e00\U58f0\U4f18\U6f14\U7ece\U4e0d\U540c\U7684\U53e3\U888b\U590d\U523b GO!";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/299441_160413160102.jpg";
 "show_status" = 1;
 "show_time" = 1460517079;
 "specific_catalog" = fengniu123;
 "specific_status" = 1;
 subject = "";
 url = "/fengniu123";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 30;
 "child_id" = 16;
 "game_name" = "\U7efc\U5408\U624b\U6e38";
 "game_url" = "/directory/game/phone";
 nickname = bkai2008;
 online = 803;
 "owner_uid" = 3464687;
 "room_id" = 82999;
 "room_name" = "\U32a3\U3010\U62f3\U768798OL\U30114.13\U6625\U6696\U82b1\U5f00";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/82999_160413160419.jpg";
 "show_status" = 1;
 "show_time" = 1460506908;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/82999";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 190;
 "child_id" = 31;
 "game_name" = "\U7687\U5ba4\U6218\U4e89";
 "game_url" = "/directory/game/hszz";
 nickname = "\U9f39\U9f20De\U6545\U4e8b";
 online = 403;
 "owner_uid" = 40197896;
 "room_id" = 555619;
 "room_name" = "\U9f39\U9f20 \U65e9\U8d77\U7684\U866b\U6709\U9e1f\U513f\U5403";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/555619_160413160737.jpg";
 "show_status" = 1;
 "show_time" = 1460531853;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/555619";
 "vod_quality" = 0;
 }
 );
 title = "\U624b\U673a\U6e38\U620f";
 },
 {
 "cate_id" = "homechannel_yzzr";
 roomlist =             (
 {
 "cate_id" = 174;
 "child_id" = 0;
 "game_name" = "\U6b21\U5143\U58c1\U5792";
 "game_url" = "/directory/game/cybl";
 nickname = "\U6f2b\U6b65\U9171";
 online = 2995;
 "owner_uid" = 1202958;
 "room_id" = 55096;
 "room_name" = "\U3010\U6597\U9c7c\U8fea\U8fbe\U62c9\U3011\U7ee7\U7eed\U634f\U5a03\U5a03~~";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/15/55096_160413155625.jpg";
 "show_status" = 1;
 "show_time" = 1460517988;
 "specific_catalog" = mbTV;
 "specific_status" = 1;
 subject = "";
 url = "/mbTV";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 174;
 "child_id" = 0;
 "game_name" = "\U6b21\U5143\U58c1\U5792";
 "game_url" = "/directory/game/cybl";
 nickname = "\U840c\U679c\U9171\U5973\U4ec6\U4e3b\U9898\U5c4b";
 online = 2714;
 "owner_uid" = 15149986;
 "room_id" = 495329;
 "room_name" = "33\U751f\U75c5\U60f9\U4e0d\U8fc7\U5979\U6709\U8bf7\U795e\U79d8\U5609\U5bbe\U6765\U4ee3\U73ed\U54df";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/495329_160413160332.jpg";
 "show_status" = 1;
 "show_time" = 1460534547;
 "specific_catalog" = maid;
 "specific_status" = 1;
 subject = "";
 url = "/maid";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 175;
 "child_id" = 0;
 "game_name" = "\U9c7c\U97f3\U7ed5\U6881";
 "game_url" = "/directory/game/yyrl";
 nickname = onlypengying;
 online = 1580;
 "owner_uid" = 28221664;
 "room_id" = 465617;
 "room_name" = "\U5c71\U6942\U59b9--\U76f2\U4eba\U6478\U743418";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/465617_160413160345.jpg";
 "show_status" = 1;
 "show_time" = 1460531387;
 "specific_catalog" = onlypery1994;
 "specific_status" = 1;
 subject = "";
 url = "/onlypery1994";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 175;
 "child_id" = 0;
 "game_name" = "\U9c7c\U97f3\U7ed5\U6881";
 "game_url" = "/directory/game/yyrl";
 nickname = "\U5927\U96c4WOW";
 online = 1149;
 "owner_uid" = 9723737;
 "room_id" = 520531;
 "room_name" = "\U5b85\U7537\U65e5\U5e38\U5531\U6b4c~";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/520531_160413160045.jpg";
 "show_status" = 1;
 "show_time" = 1460527413;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/520531";
 "vod_quality" = 0;
 }
 );
 title = "\U5fa1\U5b85\U804c\U4eba";
 },
 {
 "cate_id" = "homechannel_ywkj";
 roomlist =             (
 {
 "cate_id" = 134;
 "child_id" = 0;
 "game_name" = "\U73a9\U6570\U7801";
 "game_url" = "/directory/game/wsm";
 nickname = "2\U96f7\U554a";
 online = 1139;
 "owner_uid" = 33239357;
 "room_id" = 514743;
 "room_name" = "\U3010\U897f\U5b89\U7816\U5382\U30117\U96f712\U96f7/\U88c5\U5b8c\U4e86\U5439";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/514743_160413160051.jpg";
 "show_status" = 1;
 "show_time" = 1460525047;
 "specific_catalog" = xawd;
 "specific_status" = 1;
 subject = "";
 url = "/xawd";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 134;
 "child_id" = 0;
 "game_name" = "\U73a9\U6570\U7801";
 "game_url" = "/directory/game/wsm";
 nickname = "\U4e0a\U6d77\U5927\U660e\U6d77";
 online = 1075;
 "owner_uid" = 24554625;
 "room_id" = 424998;
 "room_name" = "\U3010\U5927\U660e\U6512\U673a\U3011\U65e5\U5e38\U88c5\U673a\U8bb2\U89e3/\U665a\U4e0a\U62bd\U5956";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/424998_160413160045.jpg";
 "show_status" = 1;
 "show_time" = 1460527609;
 "specific_catalog" = "";
 "specific_status" = 0;
 subject = "";
 url = "/424998";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 115;
 "child_id" = 0;
 "game_name" = "\U73a9\U91d1\U878d";
 "game_url" = "/directory/game/Financialplanning";
 nickname = "\U67abMaple";
 online = 231;
 "owner_uid" = 2837762;
 "room_id" = 79964;
 "room_name" = "\U4e00\U4ebf\U5b9e\U76d8\Uff0c\U76c8\U4e8f\U540c\U6e90";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/15/79964_160413155624.jpg";
 "show_status" = 1;
 "show_time" = 1460508304;
 "specific_catalog" = agu;
 "specific_status" = 1;
 subject = "";
 url = "/agu";
 "vod_quality" = 0;
 },
 {
 "cate_id" = 137;
 "child_id" = 0;
 "game_name" = "\U79d1\U5b66\U63a2\U7d22";
 "game_url" = "/directory/game/kxts";
 nickname = voidid;
 online = 4;
 "owner_uid" = 3301519;
 "room_id" = 565318;
 "room_name" = "\U542c\U6b4c\Uff0c\U559d\U8336\Uff0c\U5199\U4ee3\U7801";
 "room_src" = "http://rpic.douyucdn.cn/z1604/13/16/565318_160413160413.jpg";
 "show_status" = 1;
 "show_time" = 1460519046;
 "specific_catalog" = Trso;
 "specific_status" = 1;
 subject = "";
 url = "/Trso";
 "vod_quality" = 0;
 }
 );
 title = "\U9c7c\U73a9\U79d1\U6280";
 }
 );
 error = 0;
 }

 */
