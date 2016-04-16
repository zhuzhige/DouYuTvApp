//
//  DGHomeLiveViewCell.m
//  DGCars
//
//  Created by 米 on 16/4/13.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGHomeLiveViewCell.h"
#import "DGHomeSquareRoomModel.h"
#import <UIImageView+WebCache.h>

@interface DGHomeLiveViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLable;

@property (weak, nonatomic) IBOutlet UILabel *nameLable;

@property (weak, nonatomic) IBOutlet UILabel *numberLable;


@end

@implementation DGHomeLiveViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setModel:(DGHomeSquareRoomModel *)model
{
    _model = model;
    //刷新界面
    if (model) {
        [_imageView sd_setImageWithURL:[NSURL URLWithString:model.room_src] placeholderImage:[UIImage imageNamed:@"占位图片"]];
        
        _titleLable.text = model.room_name;
            _numberLable.text = [NSString stringWithFormat:@"%0.1f万",[model.online doubleValue]/10000];
        
        _nameLable.text = model.nickname;
        
    }
    
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self customUI];
        self.backgroundColor = [UIColor whiteColor];
    }
    
    return self;
}

- (void)customUI
{
    CGRect frame = self.frame;
    if (!_imageView) {
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,
                                                                   0,
                                                                frame.size.width,
                                                                   frame.size.height*5/6)];
        _imageView = imageView;
        [self addSubview:_imageView];
        
        //布局名字和观众数
        CGFloat width = _imageView.frame.size.width;
        CGFloat height = _imageView.frame.size.height;
        
        
        //贴背景图
        UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, height * 5 / 6, width, height / 6)];
        backView.backgroundColor = [UIColor blackColor];
        backView.alpha = 0.7;
        [_imageView addSubview:backView];
        
        _imageView.layer.masksToBounds = YES; //没这句话它圆不起来
        _imageView.layer.cornerRadius = 6.0; //设置图片圆角的尺度
        
        
        //布局直播者名字
        UILabel *nameLable = [[UILabel alloc] initWithFrame:CGRectMake(5,0, width * 2/ 3, height  / 6)];
        _nameLable = nameLable;
        
        _nameLable.font = [UIFont systemFontOfSize:13];
        //        _nameLable.adjustsFontSizeToFitWidth = YES;
        _nameLable.textColor = [UIColor whiteColor];
        [backView addSubview:_nameLable];
        
        //布局观众图片
        UIImageView *numIv = [[UIImageView alloc] initWithFrame:CGRectMake(width * 2 / 3,
                                                                           0,
                                                                           15,
                                                                           height / 6)];
        [numIv setImage:[UIImage imageNamed:@"Image_online"]];
        [backView addSubview:numIv];
        
        
        //布局观众数
        
        UILabel *numberLable = [[UILabel alloc] initWithFrame:CGRectMake(width * 2 / 3 + 15,
                                                                 0,
                                                                 width / 3 -15,
                                                                 height / 6)];
        _numberLable = numberLable;
        _numberLable.font = [UIFont systemFontOfSize:12];
        _numberLable.adjustsFontSizeToFitWidth = YES;
        _numberLable.backgroundColor = [UIColor blackColor];
        _numberLable.alpha = 1;
        _numberLable.textColor = [UIColor whiteColor];
        [backView addSubview:_numberLable];
        
        
    }
    
    if (!_titleLable) {
        
        UILabel *titleLable = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                                frame.size.height * 5 / 6,
                                                                frame.size.width,
                                                                frame.size.height / 6)];
        _titleLable = titleLable;
        _titleLable.font = [UIFont systemFontOfSize:15];
        [self addSubview:_titleLable];
    }
}



@end
