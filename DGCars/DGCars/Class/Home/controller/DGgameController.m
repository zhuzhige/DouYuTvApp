//
//  DGgameController.m
//  DGCars
//
//  Created by 米 on 16/4/9.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGgameController.h"

@interface DGgameController ()

@end

@implementation DGgameController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark <UITableViewDataSource>

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if (indexPath.section == 0) {//第一组
//        DGHomeRoundCell *cell = [tableView dequeueReusableCellWithIdentifier:@"round"];
//        [cell roundCellWith:_roundData];
//        cell.delegate = self;
//        return cell;
//    }else{
//        
//        DGHomeSquareCell *cell = [tableView dequeueReusableCellWithIdentifier:@"square"];
//        [cell squareCellWith:_squareData[indexPath.section - 1]];
//        return cell;
//    }
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    return cell;
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

//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    if (section != 0) {
//        DGSectionHeadView *headView = [[DGSectionHeadView alloc]init];
//        DGHomeSquareItemModel *model = _squareData[section-1];
//        headView.model = model;
//        headView.delegate = self;
//        
//        return headView;
//    }
//    return nil;
//}


@end
