//
//  DGHomeController.m
//  DGCars
//
//  Created by 米 on 16/4/9.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGHomeController.h"
#import "UIBarButtonItem+HKExtension.h"
#import "UIView+HKExtension.h"
#import "DGrecommendViewController.h"
#import "DGgameController.h"
#import "DGentertainController.h"
#import "DGWonderfulController.h"





@interface DGHomeController ()<UIScrollViewDelegate>

@property(nonatomic, weak)UIView *titleView;
@property(nonatomic, weak)UIView *indcatorView;
@property(nonatomic, weak)UIButton *selectdButton;
@property(nonatomic, weak)UIScrollView *contentView;


@end

@implementation DGHomeController

- (void)viewDidLoad {
    [super viewDidLoad];

//    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //绑定自定义按钮点击事件
//    self.view.backgroundColor = [UIColor redColor];
    
    [self setNav];
    [self setUpTitleView];
    [self setupChildVces];
    [self setupContentView];
    
}

- (void)setUpTitleView
{
    UIView *titleView = [[UIView alloc]init];
    titleView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:1.0];
    titleView.width = self.view.width;
    titleView.y = 64;
    titleView.height = 35;
    [self.view addSubview:titleView];
    _titleView = titleView;
    
    
    UIView *indcatorView = [[UIView alloc]init];
    indcatorView.backgroundColor = RGBCOLOR(255, 125, 0);
    indcatorView.y = titleView.height - indcatorView.height;
    indcatorView.height = 3;
    indcatorView.tag = -1;
    _indcatorView = indcatorView;
    
    
    //推荐 娱乐 游戏 奇葩
    NSArray *titles = @[@"推荐",@"娱乐",@"游戏",@"奇葩"];
    CGFloat width = titleView.width/titles.count;
    CGFloat height = titleView.height;
    for (NSInteger i = 0; i<titles.count; i++) {
        UIButton *btn = [[UIButton alloc]init];
        btn.tag = i;
        btn.width = width;
        btn.height = height;
        btn.x = i * width;
        [btn setTitle:titles[i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn setTitleColor:RGBCOLOR(255, 125, 0) forState:UIControlStateDisabled];
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        [btn addTarget:self action:@selector(titleClick:) forControlEvents:UIControlEventTouchUpInside];
        [titleView addSubview:btn];
        
        if (i == 0) {
            btn.enabled = NO;
            _selectdButton = btn;
            [btn.titleLabel sizeToFit];
            _indcatorView.width = width;
            _indcatorView.centerX = btn.centerX;
        }
        
    }
    
    [titleView addSubview:indcatorView];


}

- (void)titleClick:(UIButton *)button
{
    _selectdButton.enabled = YES;
    button.enabled = NO;
    _selectdButton = button;
    
    [UIView animateWithDuration:0.25 animations:^{
        _indcatorView.width = button.width;
        _indcatorView.centerX = button.centerX;
    }];
    
    //滚动
    CGPoint offset = self.contentView.contentOffset;
    offset.x = button.tag * self.contentView.width;
    [_contentView setContentOffset:offset animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupChildVces
{
    DGrecommendViewController *recomVC = [[DGrecommendViewController alloc]init];
    [self addChildViewController:recomVC];
    DGentertainController *enterVC = [[DGentertainController alloc]init];
    [self addChildViewController:enterVC];
    DGgameController *gameVC = [[DGgameController alloc]init];
    [self addChildViewController:gameVC];
    DGWonderfulController *wondVC = [[DGWonderfulController alloc]init];
    [self addChildViewController:wondVC];

}

- (void)setupContentView
{   //gg自动调整inset
    self.automaticallyAdjustsScrollViewInsets = NO;
    UIScrollView *contentView = [[UIScrollView alloc]init];
    contentView.frame = self.view.bounds;
    contentView.delegate = self;
    contentView.pagingEnabled = YES;
    [self.view insertSubview:contentView atIndex:0];
    contentView.contentSize = CGSizeMake(contentView.width * self.childViewControllers.count, 0);
    _contentView = contentView;
    
    [self scrollViewDidEndScrollingAnimation:contentView];

}
//设置导航栏
- (void)setNav
{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithimage:@"导航栏logo" HightImage:nil addTarget:self Action:@selector(logoClick)];
    
    self.navigationItem.rightBarButtonItems = @[
                                                [UIBarButtonItem barButtonItemWithimage:@"观看历史" HightImage:@"首页历史pressed" addTarget:self Action:@selector(historyClick)],
                                                [UIBarButtonItem barButtonItemWithimage:@"首页搜索" HightImage:@"首页搜索pressed" addTarget:self Action:@selector(searchClick)],
                                                [UIBarButtonItem barButtonItemWithimage:@"扫一扫" HightImage:@"扫一扫pressed" addTarget:self Action:@selector(scanClick)]
                                                ];
    
    self.view.backgroundColor = [UIColor whiteColor];

}

- (void)logoClick
{


}

- (void)historyClick
{
    
    
}

- (void)searchClick
{
    
    
}

- (void)scanClick
{
    
    
}


#pragma mark <UIScrollViewDelegate>

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{

    NSInteger index = scrollView.contentOffset.x / scrollView.width;
    
    UITableViewController *vc = self.childViewControllers[index];
    vc.view.x = scrollView.contentOffset.x;
    vc.view.y = 0;
    vc.view.height = scrollView.height;

    CGFloat bottom = self.tabBarController.tabBar.height;
    CGFloat top = CGRectGetMaxY(self.titleView.frame);
    vc.tableView.contentInset = UIEdgeInsetsMake(top, 0, bottom, 0);
//    vc.tableView.scrollIndicatorInsets = vc.tableView.contentInset;
    [scrollView addSubview:vc.view];
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    [self scrollViewDidEndScrollingAnimation:scrollView];
    
    //点击按钮
    NSInteger index = scrollView.contentOffset.x / scrollView.width;
    [self titleClick:self.titleView.subviews[index]];
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
