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

@interface DGrecommendViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong) NSMutableArray *roundData;
@property(nonatomic, strong) NSMutableArray *squareData;

@end

@implementation DGrecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self setupTableView];
    
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
//    
//    _roundData = [[NSMutableArray alloc] init];
//    _squareData = [[NSMutableArray alloc] init];
    
    //菊花
}


#pragma mark <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {//第一组
        DGHomeRoundCell *cell = [tableView dequeueReusableCellWithIdentifier:@"round"];
        [cell roundCellWith:_roundData];
        return cell;
    }else{
        DGHomeSquareCell *cell = [tableView dequeueReusableCellWithIdentifier:@"square"];
        [cell squareCellWith:_squareData[indexPath.section - 1]];
        return cell;
    }
    
    
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
