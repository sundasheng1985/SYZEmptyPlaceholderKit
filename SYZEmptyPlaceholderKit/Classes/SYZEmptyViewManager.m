//
//  SYZEmptyViewManager.m
//  SYZEmptyPlaceholderKit
//
//  Created by LeeRay on 2018/12/22.
//

#import "SYZEmptyViewManager.h"

@implementation SYZEmptyViewManager

- (void)onActionDelegate {
    if (self.delegate && [self.delegate respondsToSelector:@selector(onActionRefresh:)]) {
        [self.delegate onActionRefresh:self];
    }
}

#pragma mark - <DZNEmptyDataSetSource>
- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView {
    return self.syz_emptyImage;
}

- (CGFloat)spaceHeightForEmptyDataSet:(UIScrollView *)scrollView {
    return 0;
}

- (CGFloat)verticalOffsetForEmptyDataSet:(UIScrollView *)scrollView {
    return 0;
}

- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView {
    return YES;
}

- (BOOL)emptyDataSetShouldAllowTouch:(UIScrollView *)scrollView {
    return !self.syz_emptyDisableTouch.boolValue;
}

- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView {
    return !self.syz_emptyDisableBounds.boolValue;
}

#pragma mark - <DZNEmptyDataSetDelegate>
- (void)emptyDataSet:(UIScrollView *)scrollView didTapView:(UIView *)view {
    [self onActionDelegate];
}

- (void)emptyDataSet:(UIScrollView *)scrollView didTapButton:(UIButton *)button {
    [self onActionDelegate];
}
@end
