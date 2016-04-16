//
//  DGHomeRoundCell.h
//  DGCars
//
//  Created by 米 on 16/4/9.
//  Copyright © 2016年 米. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DGHomeRoundModel;

@protocol DGHomeRoundCellDelegate <NSObject>

@optional
//点击圆形推荐按钮回调
- (void)didClickRoundWithModel:(DGHomeRoundModel *)roundModel;

@end

@interface DGHomeRoundCell : UITableViewCell

@property(nonatomic, weak)id<DGHomeRoundCellDelegate> delegate;

- (void)roundCellWith:(NSMutableArray *)arry;

@end
