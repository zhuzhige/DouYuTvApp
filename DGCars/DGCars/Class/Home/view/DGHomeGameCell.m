//
//  DGHomeGameCell.m
//  DGCars
//
//  Created by 米 on 16/4/18.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGHomeGameCell.h"
#import "DGHomeGameViewCell.h"

@interface DGHomeGameCell()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,weak) UICollectionView *collectionView;
@property(nonatomic,strong) NSMutableArray *data;


@end

@implementation DGHomeGameCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //取消单元格选中效果
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self setupInit];
    }
    return self;
}

- (void)setupInit
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = 280 *[UIScreen mainScreen].bounds.size.width/375.0f;
    // 创建一个流水布局
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    // 设置cell的尺寸
    layout.itemSize = CGSizeMake((width-15)/2, (height-15)/2);
    
    // 设置滚动的方向
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    // 行间距
    layout.minimumLineSpacing = 5;
    
    // 设置cell之间的间距
    layout.minimumInteritemSpacing = 5;
    
    // 组间距
    layout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
    
    return [super initWithCollectionViewLayout:layout];
}

- (void)setUp
{
    //    是否有弹簧作用
    //    是否展示水平或者垂直标识符
    //    是否具有分页功能
    self.collectionView.bounces = YES;
    
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    self.collectionView.pagingEnabled = NO;
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
}






@end
