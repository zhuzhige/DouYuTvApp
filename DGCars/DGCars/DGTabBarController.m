//
//  DGTabBarController.m
//  DGCars
//
//  Created by 米 on 16/4/9.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGTabBarController.h"
#import "DGHomeController.h"
#import "DGLiveController.h"
#import "DGFocusController.h"
#import "DGMeController.h"

@interface DGTabBarController ()

@end

@implementation DGTabBarController


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

+ (void)initialize
{
    if (self == [DGTabBarController class]) {
        UITabBarItem *appearance = [UITabBarItem appearance];
        NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
        attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
        [appearance setTitleTextAttributes:attrs forState:UIControlStateSelected];
        
        [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
    }
}

- (void)viewDidLoad
{
    [self initChildViewController:[[UINavigationController alloc]initWithRootViewController:[[DGHomeController alloc]init]] Title:@"首页" Image:@"首页" SelectImage:@"首页pressed"];
    [self initChildViewController:[[DGLiveController alloc]init] Title:@"直播" Image:@"直播" SelectImage:@"直播pressed"];
    [self initChildViewController:[[DGFocusController alloc]init] Title:@"关注" Image:@"关注" SelectImage:@"关注pressed"];
    [self initChildViewController:[[DGMeController alloc]init] Title:@"我" Image:@"个人中心" SelectImage:@"个人中心pressed"];
    
    //KVC替换默认tabbar
//    [self setValue:[[HKTabBar alloc]init] forKeyPath:@"tabBar"];
}

/**
 *  创建子控制器
 *
 *  @param vc          控制器类型
 *  @param title       tabBar标题
 *  @param image       图片名
 *  @param SelectImage 选中图片名
 */
- (void)initChildViewController:(UIViewController *)vc Title:(NSString *)title Image:(NSString *)image SelectImage:(NSString *)SelectImage
{
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:SelectImage];
    [self addChildViewController:vc];
    
}


@end
