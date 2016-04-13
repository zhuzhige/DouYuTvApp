//
//  DGRoundView.m
//  DGCars
//
//  Created by 米 on 16/4/13.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGRoundView.h"
#import "DGHomeRoundModel.h"
#import <UIImageView+WebCache.h>

@interface DGRoundView()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end

@implementation DGRoundView




- (void)setModel:(DGHomeRoundModel *)model
{
    _model = model;
    [_iconView sd_setImageWithURL:[NSURL URLWithString:model.url] placeholderImage:[UIImage imageNamed:@"占位图片"]];
    _nameLabel.text = model.name;
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
