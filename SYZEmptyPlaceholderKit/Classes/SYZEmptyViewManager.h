//
//  SYZEmptyViewManager.h
//  SYZEmptyPlaceholderKit
//
//  Created by LeeRay on 2018/12/22.
//

#import <Foundation/Foundation.h>
#import <DZNEmptyDataSet/UIScrollView+EmptyDataSet.h>


@protocol SYZEmptyViewManagerDelegate;

@interface SYZEmptyViewManager : NSObject
<
DZNEmptyDataSetSource,
DZNEmptyDataSetDelegate
>
@property (nonatomic, weak) id<SYZEmptyViewManagerDelegate> delegate;
/** 要显示的预览图,默认为normal */
@property (nonatomic, strong) UIImage *syz_emptyImage;
/** 是否禁止滑动，默认为NO */
@property (nonatomic, copy) NSNumber *syz_emptyDisableBounds;
/** 是否禁止点击，默认为NO */
@property (nonatomic, copy) NSNumber *syz_emptyDisableTouch;

@end

@protocol SYZEmptyViewManagerDelegate <NSObject>
@optional
- (void)onActionRefresh:(SYZEmptyViewManager *)emptyManager;

@end
