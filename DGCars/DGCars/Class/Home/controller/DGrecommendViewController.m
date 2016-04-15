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
#import "DGSectionHeadView.h"
#import <AFNetworking.h>
#import <SDCycleScrollView.h>
#import <MJRefresh.h>

@interface DGrecommendViewController ()<UITableViewDataSource,UITableViewDelegate,SDCycleScrollViewDelegate,DGSectionHeadViewDelegate>
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
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupTableView];
    [self setupHeadView];
    [self setupRefresh];
    [self loadHeadData];
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
}

- (void)setupRefresh
{
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refresh)];

}

- (void)refresh
{
    [self.tableView.mj_header endRefreshing];


}

- (void) loadHeadData
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        AFHTTPSessionManager * mgr = [AFHTTPSessionManager manager];
        [mgr GET:kDGHeadViewUrl parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            _headData = [DGHeadItemModel mj_objectArrayWithKeyValuesArray:responseObject[@"data"]];
            NSMutableArray *imageURLarray = [NSMutableArray array];
            NSMutableArray *titleArray = [NSMutableArray array];
            for (DGHeadItemModel *model in _headData) {
                [imageURLarray addObject:model.pic_url];
                [titleArray addObject:model.title];
            }
//            dispatch_async(dispatch_get_main_queue(), ^{
                _headerView.imageURLStringsGroup = imageURLarray;
                _headerView.titlesGroup = titleArray;
//            });
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"setupHeadView--error");
        }];
    });
}

- (void) loadRoundData
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
        [mgr GET:kDGRoundUrl parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            NSMutableArray *roundItem = [NSMutableArray array];
            DGHomeRoundItemModel * item = [DGHomeRoundItemModel itemWithDict:responseObject[@"data"]];
            NSMutableArray *resultArray = [NSMutableArray array];
            for (NSDictionary *dict in item.result) {
                DGHomeRoundModel *room = [DGHomeRoundModel roomWithDict:dict];
                [resultArray addObject:room];
                item.result = resultArray;
                [roundItem addObject:item];
            }
            _roundData = roundItem;
            //刷新cell
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
        }];
    });

}

- (void) loadSquareData
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
        [mgr GET:kMainUrl parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            NSArray * array = responseObject[@"data"];
            NSMutableArray *SquareItem = [NSMutableArray array];
            for (NSDictionary *dict in array) {
                DGHomeSquareItemModel * item = [DGHomeSquareItemModel itemWithDict:dict];
                NSMutableArray *roomListArray = [NSMutableArray array];
                for (NSDictionary *list in item.roomlist) {
                    DGHomeSquareRoomModel *room = [DGHomeSquareRoomModel roomWithDict:list];
                    [roomListArray addObject:room];
                }
                item.roomlist = roomListArray;
                [SquareItem addObject:item];
            }
            _squareData = SquareItem;
            
            //刷新cell
            [self.tableView reloadData];
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
        }];
    });

}

#pragma mark <UITableViewDataSource>

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (_squareData.count) {
        NSLog(@"表示图分区%ld",_squareData.count);
        return _squareData.count + 1;
    }
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        if (indexPath.section == 0) {//第一组
            DGHomeRoundCell *cell = [tableView dequeueReusableCellWithIdentifier:@"round"];
//            [cell roundCellWith:_roundData];
            return cell;
        }else{
    
    DGHomeSquareCell *cell = [tableView dequeueReusableCellWithIdentifier:@"square"];
    [cell squareCellWith:_squareData[indexPath.section - 1]];
    return cell;
        }

}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section != 0) {
        return 35;
    }
    
    return 0.01;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 0) {
        return 110;
    }
    return 280 *KWidth_Scale;
    
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section != 0) {
        DGSectionHeadView *headView = [[DGSectionHeadView alloc]init];
        DGHomeSquareItemModel *model = _squareData[section-1];
        headView.model = model;
        headView.delegate = self;
        
        return headView;
    }
    return nil;
}

#pragma mark <DGSectionHeadViewDelegate>

- (void)didClickMoreWithItemModel:(DGHomeSquareItemModel *)itemModel
{
    NSLog(@"%@",itemModel);
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
