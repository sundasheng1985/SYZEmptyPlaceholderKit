//
//  NSObject+SYZBundleImageView.h
//  Pods-SYZBundleHandler_Example
//
//  Created by Sunny on 2018/7/25.
//

#import <Foundation/Foundation.h>
#import <SYZBundleHandler/NSObject+SYZBundleUIImage.h>

/** 负责往imageView上设置bundle中的image*/
@interface NSObject (SYZBundleImageView)

#pragma mark - 加载对应分辨率的png图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的图片,自动根据当前屏幕分辨率加载对应png图片*/
- (void)SYZ_setImageNamed:(NSString *)imageName toImageView:(UIImageView *)imgView;

/** 加载当前类所在bundle下面的bundleName对应bundle图片,自动根据当前屏幕分辨率加载对应png图片*/
- (void)SYZ_setImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName toImageView:(UIImageView *)imgView;

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片,自动根据当前屏幕分辨率加载对应png图片*/
- (void)SYZ_setImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName inDir:(NSString *)directory toImageView:(UIImageView *)imgView;

#pragma mark - 加载png图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的png图片*/
- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName toImageView:(UIImageView *)imgView;

/** 加载当前类所在bundle下面的bundleName对应bundle中png图片*/
- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName toImageView:(UIImageView *)imgView;

/** 加载当前类所在bundle下面的bundleName下面的directory中的png图片*/
- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName inDir:(NSString *)directory toImageView:(UIImageView *)imgView;

#pragma mark 加载指定名称的图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的图片*/
- (void)SYZ_setImageFullNamed:(NSString *)imageFullName toImageView:(UIImageView *)imgView;

/** 加载当前类所在bundle下面的bundleName对应bundle图片*/
- (void)SYZ_setImageFullNamed:(NSString *)imageFullName bundleName:(NSString *)bundleName toImageView:(UIImageView *)imgView;

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片*/
- (void)SYZ_setImageFullNamed:(NSString *)imageFullName bundleName:(NSString *)bundleName inDir:(NSString *)directory toImageView:(UIImageView *)imgView;

#pragma mark - 加载bundle中图片
/** 自动根据当前屏幕分辨率加载对应png图片*/
- (void)SYZ_setImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle toImageView:(UIImageView *)imgView;
- (void)SYZ_setImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir toImageView:(UIImageView *)imgView;

/** 不加分辨率*/
- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle toImageView:(UIImageView *)imgView;
- (void)SYZ_setNoScaleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir toImageView:(UIImageView *)imgView;

/** 直接加载对应bundle图片，imageFullName是完整名称*/
- (void)SYZ_setImageFullNamed:(NSString *)imageFullName inBundle:(NSBundle *)bundle toImageView:(UIImageView *)imgView;
- (void)SYZ_setImageFullNamed:(NSString *)imageFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir toImageView:(UIImageView *)imgView;


@end







