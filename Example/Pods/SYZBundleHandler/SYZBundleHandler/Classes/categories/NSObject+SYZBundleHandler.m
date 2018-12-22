//
//  NSObject+SYZBundleHandler.m
//  Pods-SYZBundleHandler_Example
//
//  Created by Sunny on 2018/7/25.
//

#import "NSObject+SYZBundleHandler.h"
#import <SYZBundleSourceLoader.h>
#import <objc/runtime.h>

static char* SYZ_IMAGE_BUNDLE_NAME = "image_bundle_name";
@implementation NSObject (SYZBundleHandler)

/** 缓存当前类所在bundle*/
- (NSBundle *)SYZ_cachedCurrentBundle {
    NSBundle *cachedBundle = objc_getAssociatedObject(self, _cmd);
    if (cachedBundle == nil) {
        cachedBundle = [NSBundle bundleForClass:[self class]];
        if (self.SYZ_imageBundleName) {
            cachedBundle = [[SYZBundleSourceLoader sharedInstance] subBundleWithName:self.SYZ_imageBundleName inBundle:cachedBundle];
        }
        objc_setAssociatedObject(self, _cmd, cachedBundle, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return cachedBundle;
}

- (void)setSYZ_imageBundleName:(NSString *)SYZ_imageBundleName {
    objc_setAssociatedObject(self, SYZ_IMAGE_BUNDLE_NAME, SYZ_imageBundleName, OBJC_ASSOCIATION_COPY);
}

- (NSString *)SYZ_imageBundleName {
    return objc_getAssociatedObject(self, SYZ_IMAGE_BUNDLE_NAME);
}

@end










