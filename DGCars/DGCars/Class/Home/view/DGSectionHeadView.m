//
//  DGSectionHeadView.m
//  DGCars
//
//  Created by 米 on 16/4/15.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGSectionHeadView.h"
#import "DGHomeSquareItemModel.h"

@interface DGSectionHeadView()

@property (weak, nonatomic) IBOutlet UIImageView *leftImage;

@property (weak, nonatomic) IBOutlet UILabel *titleLable;

@property (weak, nonatomic) IBOutlet UIButton *moreButton;

@end

@implementation DGSectionHeadView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self = [[NSBundle mainBundle] loadNibNamed:@"DGSectionHeadView" owner:self options:nil].lastObject;
    }
    return self;
}

- (void)awakeFromNib
{
    _leftImage.layer.masksToBounds = YES; //没这句话它圆不起来
    _leftImage.layer.cornerRadius = 3.0; //设置图片圆角的尺度
   
}
- (IBAction)moreClick:(id)sender {
    if ([_delegate respondsToSelector:@selector(didClickMoreWithItemModel:)]) {
        [_delegate didClickMoreWithItemModel:_model];
    }
}

- (void)setModel:(DGHomeSquareItemModel *)model
{
    _model = model;
    NSLog(@"%@",model.title);
    _titleLable.text = model.title;
    
}

@end
