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

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self = [[NSBundle mainBundle] loadNibNamed:@"DGRoundView" owner:self options:nil].lastObject;
        self.frame = frame;
    }
    return self;
}

- (void)awakeFromNib
{
    _iconView.layer.masksToBounds = YES; //没这句话它圆不起来
    _iconView.layer.cornerRadius = _iconView.bounds.size.width * 0.5;
    _iconView.layer.borderColor = [UIColor whiteColor].CGColor;
    
}

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
