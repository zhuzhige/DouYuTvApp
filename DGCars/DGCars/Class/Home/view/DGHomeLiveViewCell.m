//
//  DGHomeLiveViewCell.m
//  DGCars
//
//  Created by 米 on 16/4/13.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGHomeLiveViewCell.h"
#import "DGRoomModel.h"
#import <UIImageView+WebCache.h>

@interface DGHomeLiveViewCell()

@property(nonatomic, weak)UIImageView *iconView;

@end

@implementation DGHomeLiveViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setupInit];
    }
    return self;
}

- (void)setupInit
{
    UIImageView *iconView = [[UIImageView alloc]init];
    [self.contentView addSubview:iconView];
    [iconView sd_layout].topSpaceToView(self,0).leftSpaceToView(self,0).rightSpaceToView(self,0).heightRatioToView(self,0.8);
    _iconView = iconView;
    
    
}

- (void)setModel:(DGRoomModel *)model
{
    _model = model;
    //刷新界面
    [_iconView sd_setImageWithURL:[NSURL URLWithString:model.room_src] placeholderImage:[UIImage imageNamed:@"arrow"]];
    
}

@end
