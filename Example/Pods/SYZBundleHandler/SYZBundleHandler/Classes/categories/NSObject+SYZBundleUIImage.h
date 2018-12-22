//
//  NSObject+SYZBundleUIImage.h
//  SYZBundleHandler
//
//  Created by Sunny on 2018/7/25.
//

#import <Foundation/Foundation.h>
#import <SYZBundleHandler/NSObject+SYZBundleHandler.h>

/** 负责获取bundle中的图片*/
@interface NSObject (SYZBundleUIImage)

#pragma mark - 加载对应分辨率的png图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的图片,自动根据当前屏幕分辨率加载对应png图片*/
- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName;

/** 加载当前类所在bundle下面的bundleName对应bundle图片,自动根据当前屏幕分辨率加载对应png图片*/
- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName;

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片,自动根据当前屏幕分辨率加载对应png图片*/
- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName inDir:(NSString *)directory;

#pragma mark - 加载没有分辨率的png图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的png图片，没有分辨率*/
- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName;

/** 加载当前类所在bundle下面的bundleName对应bundle中png图片，没有分辨率*/
- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName;

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片，没有分辨率*/
- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName bundleName:(NSString *)bundleName inDir:(NSString *)directory;

#pragma mark 加载指定名称的图片
/** 加载当前类所在bundle图片到imgView，默认加载当前view所在bundle下的图片*/
- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName;

/** 加载当前类所在bundle下面的bundleName对应bundle图片*/
- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName bundleName:(NSString *)bundleName;

/** 加载当前类所在bundle下面的bundleName下面的directory中的图片*/
- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName bundleName:(NSString *)bundleName inDir:(NSString *)directory;

#pragma 加载bundle下的图片
/** 自动根据当前屏幕分辨率加载对应png图片*/
- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle;
/** 自动根据当前屏幕分辨率加载对应png图片*/
- (UIImage *)SYZ_loadBundleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir;

/** 加载对应png图片*/
- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle;
/** 加载对应png图片*/
- (UIImage *)SYZ_loadBundleNoScaleImageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir;

/** 自动根据当前屏幕分辨率加载对应png图片*/
- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName inBundle:(NSBundle *)bundle;
/** 自动根据当前屏幕分辨率加载对应png图片*/
- (UIImage *)SYZ_loadBundleImageFullNamed:(NSString *)imageFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDir;



@end





