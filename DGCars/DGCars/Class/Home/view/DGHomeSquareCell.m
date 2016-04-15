//
//  DGHomeSquareCell.m
//  DGCars
//
//  Created by 米 on 16/4/9.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DGHomeSquareCell.h"
#import "DGHomeLiveViewCell.h"
#import "DGHomeSquareItemModel.h"

@interface DGHomeSquareCell()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,weak) UICollectionView *collectionView;
@property(nonatomic,strong) NSMutableArray *data;


@end

@implementation DGHomeSquareCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)squareCellWith:(DGHomeSquareItemModel *)model
{
    _data = model.roomlist;
    [_collectionView reloadData];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //取消单元格选中效果
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initCollectionView];
    }
    return self;
}

- (void)initCollectionView
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = 280 *[UIScreen mainScreen].bounds.size.width/375.0f;
    
    UICollectionViewFlowLayout *laout = [[UICollectionViewFlowLayout alloc] init];
    laout.itemSize = CGSizeMake((width-15)/2, (height-15)/2);
    laout.minimumInteritemSpacing = 5;
    laout.minimumLineSpacing = 5;
    laout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, width, height) collectionViewLayout:laout];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.scrollEnabled = NO;
    [collectionView registerClass:[DGHomeLiveViewCell class] forCellWithReuseIdentifier:@"homeLive"];
    
    _collectionView = collectionView;
    
    [self addSubview:_collectionView];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSLog(@"%ld",_data.count);
    return _data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DGHomeLiveViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"homeLive" forIndexPath:indexPath];
    
    cell.model = _data[indexPath.row];
    
    return cell;
}

@end
