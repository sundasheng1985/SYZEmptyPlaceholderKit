//
//  UIScrollView+EmptyViewManager.m
//  SYZEmptyPlaceholderKit
//
//  Created by LeeRay on 2018/12/22.
//

#import "UIScrollView+EmptyViewManager.h"
#import <objc/runtime.h>
#import "SYZEmptyViewManager.h"
#import "UIImage+EmptyViewManager.h"

@interface UIScrollView ()<SYZEmptyViewManagerDelegate>
@property (nonatomic, strong) SYZEmptyViewManager *emptyManager;
@end

@implementation UIScrollView (EmptyViewManager)

#pragma mark - Set & Get
- (void)setSyz_empty:(NSNumber *)syz_empty {
    objc_setAssociatedObject(self, _cmd, syz_empty, OBJC_ASSOCIATION_COPY_NONATOMIC);
    if (syz_empty.boolValue) {
        [self _config];
    }
}

- (NSNumber *)syz_empty {
    return objc_getAssociatedObject(self, @selector(setSyz_empty:));
}

- (void)setSyz_emptyDelegate:(id<SYZScrollViewEmptyDelegate>)syz_emptyDelegate {
    objc_setAssociatedObject(self, _cmd, syz_emptyDelegate, OBJC_ASSOCIATION_ASSIGN);
}

- (id<SYZScrollViewEmptyDelegate>)syz_emptyDelegate {
    return objc_getAssociatedObject(self, @selector(setSyz_emptyDelegate:));
}

- (void)setSyz_emptyImage:(UIImage *)syz_emptyImage {
    objc_setAssociatedObject(self, _cmd, syz_emptyImage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.emptyManager.syz_emptyImage = syz_emptyImage;
}

- (UIImage *)syz_emptyImage {
    return objc_getAssociatedObject(self, @selector(setSyz_emptyImage:));
}

- (void)setSyz_emptyDisableTouch:(NSNumber *)syz_emptyDisableTouch {
    objc_setAssociatedObject(self, _cmd, syz_emptyDisableTouch, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.emptyManager.syz_emptyDisableTouch = syz_emptyDisableTouch;
}

- (NSNumber *)syz_emptyDisableTouch {
    return objc_getAssociatedObject(self, @selector(setSyz_emptyDisableTouch:));
}

- (void)setSyz_emptyDisableBounds:(NSNumber *)syz_emptyDisableBounds {
    objc_setAssociatedObject(self, _cmd, syz_emptyDisableBounds, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.emptyManager.syz_emptyDisableBounds = syz_emptyDisableBounds;
}

- (NSNumber *)syz_emptyDisableBounds {
    return objc_getAssociatedObject(self, @selector(setSyz_emptyDisableBounds:));
}

- (SYZEmptyViewManager *)emptyManager {
    SYZEmptyViewManager *manager = objc_getAssociatedObject(self, _cmd);
    if (!manager) {
        manager = [SYZEmptyViewManager new];
        self.emptyDataSetDelegate = manager;
        self.emptyDataSetSource = manager;
        manager.delegate = self;
        objc_setAssociatedObject(self, _cmd, manager, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return manager;
}

#pragma mark - Private
- (void)_config {
    if (self.syz_emptyImage) {
        self.emptyManager.syz_emptyImage = self.syz_emptyImage;
    }else{
        self.emptyManager.syz_emptyImage = [UIImage syz_emptyImageDef];
    }
    
    self.emptyManager.syz_emptyDisableTouch = self.syz_emptyDisableTouch = @(NO);
    self.emptyManager.syz_emptyDisableBounds = self.syz_emptyDisableBounds = @(NO);
}

#pragma mark - <SYZEmptyManagerDelegate>
- (void)onActionRefresh:(SYZEmptyViewManager *)emptyManager {
    if (self.syz_emptyDelegate && [self.syz_emptyDelegate respondsToSelector:@selector(syz_onActionRefresh:)]) {
        [self.syz_emptyDelegate syz_onActionRefresh:self];
    }
}


@end
