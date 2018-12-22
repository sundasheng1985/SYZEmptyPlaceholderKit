//
//  UIScrollView+EmptyViewManager.h
//  SYZEmptyPlaceholderKit
//
//  Created by LeeRay on 2018/12/22.
//

#import <UIKit/UIKit.h>

@protocol SYZScrollViewEmptyDelegate <NSObject>
@optional
- (void)syz_onActionRefresh:(UIScrollView *)scrollView;
@end

@interface UIScrollView (EmptyViewManager)

/** 是否需要占位图 */
@property (nonatomic, copy) NSNumber *syz_empty;
/** 展位图点击 */
@property (nonatomic, weak) id<SYZScrollViewEmptyDelegate> syz_emptyDelegate;
/** 空图片 */
@property (nonatomic, strong) UIImage *syz_emptyImage;
/** 是否禁止滑动,默认为NO */
@property (nonatomic, copy) NSNumber *syz_emptyDisableBounds;
/** 是否禁止点击,默认为NO */
@property (nonatomic, copy) NSNumber *syz_emptyDisableTouch;
@end
