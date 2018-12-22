//
//  NSObject+SYZBundleUIImage.m
//  SYZBundleHandler
//
//  Created by Sunny on 2018/7/25.
//

#import "NSObject+SYZBundleUIImage.h"

@implementation NSObject (SYZBundleUIImage)

#pragma mark - 加载对应分辨率的png图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的图片*/
- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName {
    return [self SYZ_loadBundleImageNamed:imageName bundleName:nil inDir:nil];
}

/** 加载当前类所在bundle下面的bundleName对应bundle图片*/
- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName {
    return [self SYZ_loadBundleImageNamed:imageName bundleName:bundleName inDir:nil];
}

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片*/
- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName inDir:(NSString *)directory  {
     return [GSYZBundleSourceLoader loadPNGImageFromBundle:self.SYZ_cachedCurrentBundle
                                                 subBundle:bundleName
                                               inDirectory:directory
                                                 imageName:imageName
                                                 needScale:YES];
}

#pragma mark - 加载没有分辨率的png图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的png图片，没有分辨率*/
- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName {
    return [self SYZ_loadBundleNoScaleImageNamed:imageName bundleName:nil inDir:nil];
}

/** 加载当前类所在bundle下面的bundleName对应bundle中png图片，没有分辨率*/
- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName {
    return [self SYZ_loadBundleNoScaleImageNamed:imageName bundleName:bundleName inDir:nil];
}

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片，没有分辨率*/
- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName inDir:(NSString *)directory {
    return [GSYZBundleSourceLoader loadPNGImageFromBundle:self.SYZ_cachedCurrentBundle
                                                subBundle:bundleName
                                              inDirectory:directory
                                                imageName:imageName
                                                needScale:NO];
}

#pragma mark 加载指定名称的图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的图片*/
- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName {
    return [self SYZ_loadBundleImageFullNamed:imageFullName bundleName:nil inDir:nil];
}

/** 加载当前类所在bundle下面的bundleName对应bundle图片*/
- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName bundleName:(NSString *)bundleName {
    return [self SYZ_loadBundleImageFullNamed:imageFullName bundleName:bundleName inDir:nil];
}

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片*/
- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName bundleName:(NSString *)bundleName inDir:(NSString *)directory {
     return [GSYZBundleSourceLoader loadImageFromBundle:self.SYZ_cachedCurrentBundle
                                              subBundle:bundleName
                                            inDirectory:directory
                                          imageFullName:imageFullName];
}

#pragma 加载bundle下的图片
- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle {
    return [self SYZ_loadBundleImageNamed:imageName inBundle:bundle subDir:nil];
}

- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir {
    return [GSYZBundleSourceLoader loadPNGImageFromBundle:bundle inDirectory:subDir imageName:imageName];
}

/** 自动根据当前屏幕分辨率加载对应png图片*/
- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle {
    return [self SYZ_loadBundleImageNamed:imageName inBundle:bundle subDir:nil];
}

- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir {
    return [GSYZBundleSourceLoader loadPNGImageFromBundle:bundle inDirectory:subDir imageName:imageName needScale:NO];
}

/** 自动根据当前屏幕分辨率加载对应png图片*/
- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName inBundle:(NSBundle *)bundle {
    return [self SYZ_loadBundleImageFullNamed:imageFullName inBundle:bundle subDir:nil];
}

- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir {
    return [GSYZBundleSourceLoader loadImageFromBundle:bundle inDirectory:subDir imageFullName:imageFullName];
}

@end
