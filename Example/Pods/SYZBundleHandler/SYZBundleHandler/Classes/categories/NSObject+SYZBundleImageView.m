//
//  NSObject+SYZBundleImageView.m
//  Pods-SYZBundleHandler_Example
//
//  Created by Sunny on 2018/7/25.
//

#import "NSObject+SYZBundleImageView.h"

@implementation NSObject (SYZBundleImageView)

#pragma mark - 加载对应分辨率的png图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的图片*/
- (void)SYZ_setImageNamed:(NSString *)imageName toImageView:(UIImageView *)imgView {
    [self SYZ_setImageNamed:imageName bundleName:nil inDir:nil toImageView:imgView];
}

/** 加载当前类所在bundle下面的bundleName对应bundle图片*/
- (void)SYZ_setImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName toImageView:(UIImageView *)imgView {
    [self SYZ_setImageNamed:imageName bundleName:bundleName inDir:nil toImageView:imgView];
}

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片*/
- (void)SYZ_setImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName inDir:(NSString *)directory toImageView:(UIImageView *)imgView {
    if (imgView == nil) return;
    imgView.image = [self SYZ_loadBundleImageNamed:imageName bundleName:bundleName inDir:directory];
}

#pragma mark - 加载png图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的png图片*/
- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName toImageView:(UIImageView *)imgView {
    [self SYZ_setNoScaleImageNamed:imageName bundleName:nil inDir:nil toImageView:imgView];
}

/** 加载当前类所在bundle下面的bundleName对应bundle中png图片*/
- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName toImageView:(UIImageView *)imgView {
    [self SYZ_setNoScaleImageNamed:imageName bundleName:bundleName inDir:nil toImageView:imgView];
}

/** 加载当前类所在bundle下面的bundleName下面的directory中的png图片*/
- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName inDir:(NSString *)directory toImageView:(UIImageView *)imgView {
    if (imgView == nil) return;
    imgView.image = [self SYZ_loadBundleNoScaleImageNamed:imageName bundleName:bundleName inDir:directory];
}

#pragma mark 加载指定名称的图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的图片*/
- (void)SYZ_setImageFullNamed:(NSString *)imageFullName toImageView:(UIImageView *)imgView {
    [self SYZ_setImageFullNamed:imageFullName bundleName:nil inDir:nil toImageView:imgView];
}

/** 加载当前类所在bundle下面的bundleName对应bundle图片*/
- (void)SYZ_setImageFullNamed:(NSString *)imageFullName bundleName:(NSString *)bundleName toImageView:(UIImageView *)imgView {
    [self SYZ_setImageFullNamed:imageFullName bundleName:bundleName inDir:nil toImageView:imgView];
}

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片*/
- (void)SYZ_setImageFullNamed:(NSString *)imageFullName bundleName:(NSString *)bundleName inDir:(NSString *)directory toImageView:(UIImageView *)imgView {
    if (imgView == nil) return;
    imgView.image = [self SYZ_loadBundleImageNamed:imageFullName bundleName:bundleName inDir:directory];
}

#pragma mark - 加载bundle中图片
/** 自动根据当前屏幕分辨率加载对应png图片*/
- (void)SYZ_setImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle toImageView:(UIImageView *)imgView {
    [self SYZ_setImageNamed:imageName inBundle:bundle subDir:nil toImageView:imgView];
}

- (void)SYZ_setImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir toImageView:(UIImageView *)imgView {
    if (imgView == nil) return;
    imgView.image = [self SYZ_loadBundleImageNamed:imageName inBundle:bundle subDir:subDir];
}

/** 不加分辨率*/
- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle toImageView:(UIImageView *)imgView {
    [self SYZ_setNoScaleImageNamed:imageName inBundle:bundle subDir:nil toImageView:imgView];
}

- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir toImageView:(UIImageView *)imgView {
    if (imgView == nil) return;
    imgView.image = [self SYZ_loadBundleNoScaleImageNamed:imageName inBundle:bundle subDir:subDir];
}

/** 直接加载对应bundle图片，imageFullName是完整名称*/
- (void)SYZ_setImageFullNamed:(NSString *)imageFullName inBundle:(NSBundle *)bundle toImageView:(UIImageView *)imgView {
    [self SYZ_setImageFullNamed:imageFullName inBundle:bundle subDir:nil toImageView:imgView];
}

- (void)SYZ_setImageFullNamed:(NSString *)imageFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir toImageView:(UIImageView *)imgView {
    if (imgView == nil) return;
    imgView.image = [self SYZ_loadBundleImageFullNamed:imageFullName inBundle:bundle subDir:subDir];
}

@end








