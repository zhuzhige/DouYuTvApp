//
//  UIBarButtonItem+HKExtension.h
//  haki
//
//  Created by 米 on 16/3/9.
//  Copyright © 2016年 猪之歌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HKExtension)
/**
 *  创建自定义按钮barbutton
 *
 *  @param image  默认图
 *  @param image  高亮图
 *  @param target 控制器
 *  @param action 点击事件
 *
 *  @return BarButtonItem
 */
+ (instancetype)barButtonItemWithimage:(NSString *)image HightImage:(NSString *)image addTarget:(id)target Action:(SEL)action;

@end
