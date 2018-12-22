//
//  NSObject+SYZBundleUIButton.h
//  Pods-SYZBundleHandler_Example
//
//  Created by Sunny on 2018/7/25.
//

#import <Foundation/Foundation.h>
#import <SYZBundleHandler/NSObject+SYZBundleUIImage.h>

/** 负责加载bundle中的图片并设置给button的不同状态*/
@interface NSObject (SYZBundleUIButton)

#pragma mark 给UIControl的不同状态设置对应分辨率的png图片
/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片，自动加上当前分辨率寻找图片*/
- (void)SYZ_setBundleImageWithName:(NSString *)imageName forState:(UIControlState)state inButton:(UIButton *)button;

/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片，自动加上当前分辨率寻找图片*/
- (void)SYZ_setBundleImageWithName:(NSString *)imageName subBundle:(NSString *)subBundleName forState:(UIControlState)state inButton:(UIButton *)button;

/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片，自动加上当前分辨率寻找图片*/
- (void)SYZ_setBundleImageWithName:(NSString *)imageName subBundle:(NSString *)subBundleName inDir:(NSString *)subDir forState:(UIControlState)state inButton:(UIButton *)button;

#pragma mark 给UIControl的不同状态设置指定名称的图片
/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片*/
- (void)SYZ_setBundleImageWithFullName:(NSString *)imageFullName forState:(UIControlState)state inButton:(UIButton *)button;

/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片*/
- (void)SYZ_setBundleImageWithFullName:(NSString *)imageFullName subBundle:(NSString *)subBundleName forState:(UIControlState)state inButton:(UIButton *)button;

/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片*/
- (void)SYZ_setBundleImageWithFullName:(NSString *)imageFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDir forState:(UIControlState)state inButton:(UIButton *)button;

#pragma mark - 直接从给定bundle中获取图片
/** 自动加上分辨率和png后缀*/
- (void)SYZ_setBundleImageWithName:(NSString *)imageName inBundle:(NSBundle *)bundle forState:(UIControlState)state inButton:(UIButton *)button;

/** 自动加上png后缀*/
- (void)SYZ_setBundleNoScaleImageWithName:(NSString *)imageName inBundle:(NSBundle *)bundle forState:(UIControlState)state inButton:(UIButton *)button;

/** 图片的完整名字*/
- (void)SYZ_setFullImageName:(NSString *)imageName inBundle:(NSBundle *)bundle forState:(UIControlState)state inButton:(UIButton *)button;

@end
















