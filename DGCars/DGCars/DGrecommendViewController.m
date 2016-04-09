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
@property(nonatomic, strong) NSMutableArray *showData;
@property(nonatomic, strong) NSMutableArray *mainData;

@property(nonatomic, strong) UIActivityIndicatorView *acview;


@end

@implementation DGrecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
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
    
//    _showData = [[NSMutableArray alloc] init];
//    _mainData = [[NSMutableArray alloc] init];
    
    //菊花
}


#pragma mark <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[UITableViewCell alloc]init];
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
