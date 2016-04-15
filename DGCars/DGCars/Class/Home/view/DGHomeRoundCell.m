//
//  DGHomeRoundCell.m
//  DGCars
//
//  Created by 米 on 16/4/9.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGHomeRoundCell.h"
#import "DGHomeRoundModel.h"
#import "DGRoundView.h"


@interface DGHomeRoundCell()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property(nonatomic, strong)NSArray * array;
@end

@implementation DGHomeRoundCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)roundCellWith:(NSArray *)arry
{
    _array = [NSArray arrayWithArray:arry];
    
    _scrollView.contentSize = CGSizeMake(125 * arry.count+5, 105);
    
    for (NSInteger i = 0; i <arry.count; i++) {
        
        //依次创建小模块
        DGHomeRoundModel *model = arry[i];
        CGRect frame = CGRectMake((i+1)*5+i*120, 5, 120, 100);
        DGRoundView * roundVc = [[DGRoundView alloc]initWithFrame:frame];
        roundVc.model = model;
        [_scrollView addSubview:roundVc];
        
        
    }
    
//    for (NSInteger i = 0; i <arry.count; i++) {
//        
//        ItemModel *model = arry[i];
//        CGRect frame=CGRectMake((i+1)*5+i*120, 5, 120, 100);
//        
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"NewShow" owner:self options:nil];
//        
//        NewShow *showView = [nib objectAtIndex:0];
//        
//        showView.frame = frame;
//        showView.tag = i;
//        [showView updateWith:model];
//        [_scrollView addSubview:showView];
//        //添加手势
//        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(touch:)];
//        [showView addGestureRecognizer:tap];
//    }


}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //取消单元格选中效果
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}




@end
