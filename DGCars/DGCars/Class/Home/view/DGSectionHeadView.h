//
//  DGSectionHeadView.h
//  DGCars
//
//  Created by 米 on 16/4/15.
//  Copyright © 2016年 米. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DGHomeSquareItemModel;

@protocol DGSectionHeadViewDelegate <NSObject>

@optional
//点击加载更多按钮回调
- (void)didClickMoreWithItemModel:(DGHomeSquareItemModel *)itemModel;

@end

@interface DGSectionHeadView : UIView

@property(nonatomic, weak)id<DGSectionHeadViewDelegate> delegate;

@property(nonatomic, strong)DGHomeSquareItemModel *model;


@end
