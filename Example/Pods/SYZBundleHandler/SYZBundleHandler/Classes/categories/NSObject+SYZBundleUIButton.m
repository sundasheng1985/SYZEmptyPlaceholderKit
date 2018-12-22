//
//  NSObject+SYZBundleUIButton.m
//  Pods-SYZBundleHandler_Example
//
//  Created by Sunny on 2018/7/25.
//

#import "NSObject+SYZBundleUIButton.h"

@implementation NSObject (SYZBundleUIButton)

#pragma mark 给UIControl的不同状态设置对应分辨率的png图片
/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片，自动加上当前分辨率寻找图片*/
- (void)SYZ_setBundleImageWithName:(NSString *)imageName forState:(UIControlState)state inButton:(UIButton *)button {
    [self SYZ_setBundleImageWithName:imageName subBundle:nil inDir:nil forState:state inButton:button];
}

/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片，自动加上当前分辨率寻找图片*/
- (void)SYZ_setBundleImageWithName:(NSString *)imageName subBundle:(NSString *)subBundleName forState:(UIControlState)state inButton:(UIButton *)button {
    [self SYZ_setBundleImageWithName:imageName subBundle:subBundleName inDir:nil forState:state inButton:button];
}

/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片，自动加上当前分辨率寻找图片*/
- (void)SYZ_setBundleImageWithName:(NSString *)imageName subBundle:(NSString *)subBundleName inDir:(NSString *)subDir forState:(UIControlState)state inButton:(UIButton *)button {
    if (button == nil) return;
    UIImage *bundleImage = [self SYZ_loadBundleImageNamed:imageName bundleName:subBundleName inDir:subDir];
    [button setImage:bundleImage forState:state];
}

#pragma mark 给UIControl的不同状态设置指定名称的图片
/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片，自动加上当前分辨率寻找图片*/
- (void)SYZ_setBundleImageWithFullName:(NSString *)imageFullName forState:(UIControlState)state inButton:(UIButton *)button {
    [self SYZ_setBundleImageWithFullName:imageFullName subBundle:nil inDir:nil forState:state inButton:button];
}

/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片，自动加上当前分辨率寻找图片*/
- (void)SYZ_setBundleImageWithFullName:(NSString *)imageFullName subBundle:(NSString *)subBundleName forState:(UIControlState)state inButton:(UIButton *)button {
    [self SYZ_setBundleImageWithFullName:imageFullName subBundle:subBundleName inDir:nil forState:state inButton:button];
}

/** 设置bundle下面对应subBundleName子bundle下面的subDir目录下的图片，自动加上当前分辨率寻找图片*/
- (void)SYZ_setBundleImageWithFullName:(NSString *)imageFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDir forState:(UIControlState)state inButton:(UIButton *)button {
    if (button == nil) return;
    UIImage *bundleImage = [self SYZ_loadBundleImageFullNamed:imageFullName bundleName:subBundleName inDir:subDir];
    [button setImage:bundleImage forState:state];
}

#pragma mark - 直接从给定bundle中获取图片
/** 自动加上分辨率和png后缀*/
- (void)SYZ_setBundleImageWithName:(NSString *)imageName inBundle:(NSBundle *)bundle forState:(UIControlState)state inButton:(UIButton *)button {
    if (button == nil) return;
    UIImage *bundleImage = [GSYZBundleSourceLoader loadPNGImageFromBundle:bundle imageName:imageName];
    [button setImage:bundleImage forState:state];
}

/** 自动加上png后缀*/
- (void)SYZ_setBundleNoScaleImageWithName:(NSString *)imageName inBundle:(NSBundle *)bundle forState:(UIControlState)state inButton:(UIButton *)button {
    if (button == nil) return;
    UIImage *bundleImage = [GSYZBundleSourceLoader loadPNGImageFromBundle:bundle imageName:imageName needScale:NO];
    [button setImage:bundleImage forState:state];
}

/** 图片的完整名字*/
- (void)SYZ_setFullImageName:(NSString *)imageName inBundle:(NSBundle *)bundle forState:(UIControlState)state inButton:(UIButton *)button {
    if (button == nil) return;
    UIImage *bundleImage = [GSYZBundleSourceLoader loadImageFromBundle:bundle imageFullName:imageName];
    [button setImage:bundleImage forState:state];
}

@end







