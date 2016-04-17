//
//  DGWonderfulController.m
//  DGCars
//
//  Created by 米 on 16/4/16.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGWonderfulController.h"
#import "DGWonderfulCell.h"
#import "DGWonderFulModel.h"
#import <MJRefresh.h>
#import <AFNetworking.h>


@interface DGWonderfulController ()

@property(nonatomic,strong) NSMutableArray *data;

@end

@implementation DGWonderfulController

static NSString * const reuseIdentifier = @"wonderCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    [self setUp];
    // Register cell classes
    [self.collectionView registerClass:[DGWonderfulCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    [self setupRefresh];
    
    [self loadWonderfulModelWith:_data.count];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)init
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = 280 *[UIScreen mainScreen].bounds.size.width/375.0f;



    // 创建一个流水布局
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    // 设置cell的尺寸
    layout.itemSize = CGSizeMake((width-15)/2, (height-15)/2);
    
    // 设置滚动的方向
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    // 行间距
    layout.minimumLineSpacing = 5;
    
    // 设置cell之间的间距
    layout.minimumInteritemSpacing = 5;

    // 组间距
    layout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
    
    return [super initWithCollectionViewLayout:layout];
}

- (void)setUp
{
//    是否有弹簧作用
//    是否展示水平或者垂直标识符
//    是否具有分页功能
    self.collectionView.bounces = YES;
    
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    self.collectionView.pagingEnabled = NO;
    
    self.collectionView.backgroundColor = [UIColor whiteColor];

}

- (void)setupRefresh
{
    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(headRefresh)];
    self.collectionView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(footRefresh)];

}

- (void)headRefresh
{
    [self loadWonderfulModelWith:_data.count];
    [self.collectionView.mj_header endRefreshing];

}

- (void)footRefresh
{
    //带账号AUTH
    //http://capi.douyucdn.cn/api/v1/getColumnRoom/3?aid=ios&client_sys=ios&limit=20&offset=20&time=1460796780&auth=78faf30edac8d36a21231feacc43c029
    //http://capi.douyucdn.cn/api/v1/getColumnRoom/3?aid=ios&client_sys=ios&limit=20&offset=0&time=1460796840&auth=bb72be4e505e482ae5d50c21a8bf53ed
    
    //http://capi.douyucdn.cn/api/v1/getCustomRoom?aid=ios&client_sys=ios&tagIds=133_44_170_174_72_159_136_134_195_137_&time=1460796900&auth=19a2a73713d49352fc9355a9ea3b0248
    //http://capi.douyucdn.cn/api/v1/getColumnRoom/3?aid=ios&client_sys=ios&limit=20&offset=0&time=1460796960&auth=46e142cbe25a2b7613adde8be977f77e
    [self loadWonderfulModelWith:_data.count];
    [self.collectionView.mj_footer endRefreshingWithNoMoreData];
}

- (void)loadWonderfulModelWith:(NSInteger)offset
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
        [mgr GET:[NSString stringWithFormat:kWonderfulUrl,offset]  parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSMutableArray *array = [NSMutableArray array];
            for (NSDictionary *dict in responseObject[@"data"]) {
                DGWonderFulModel *model = [DGWonderFulModel wonderFulWithDict:dict];
                [array addObject:model];
            }
            _data = array;
            //刷新cell
            [self.collectionView reloadData];
        } failure:nil];
    });
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DGWonderfulCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    [cell setModel:_data[indexPath.row]];
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
