//
//  UIBarButtonItem+HKExtension.m
//  haki
//
//  Created by 米 on 16/3/9.
//  Copyright © 2016年 猪之歌. All rights reserved.
//

#import "UIBarButtonItem+HKExtension.h"
#import "UIView+HKExtension.h"

@implementation UIBarButtonItem (HKExtension)

+ (instancetype)barButtonItemWithimage:(NSString *)image HightImage:(NSString *)hightImage addTarget:(id)target Action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    if (hightImage != nil) {
        [button setBackgroundImage:[UIImage imageNamed:hightImage] forState:UIControlStateHighlighted];
    }
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:button];
}

@end
