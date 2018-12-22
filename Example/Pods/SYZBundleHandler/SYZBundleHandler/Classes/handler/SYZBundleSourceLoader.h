//
//  SYZBundleSourceLoader.h
//  Pods-SYZDemo_Example
//
//  Created by Sunny on 2018/7/24.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <ImageIO/ImageIO.h>
#import <CoreImage/CoreImage.h>

#define GSYZBundleSourceLoader ([SYZBundleSourceLoader sharedInstance])

@interface SYZBundleSourceLoader : NSObject

+ (instancetype)sharedInstance;

#pragma mark - bundle 获取
/** 获取bundle中名字为bundleName的子bundle，如果bundleName为空或者找不到对应的子bundle，则返回父bundle*/
- (NSBundle *)subBundleWithName:(NSString *)subBundleName inBundle:(NSBundle *)bundle;
/** 获取bundle下面子目录的bundle*/
- (NSBundle *)subBundleWithDirectory:(NSString *)directory inBundle:(NSBundle *)bundle;
/** 获取bundle中名字为bundleName的子bundle下的子目录bundle，如果bundleName为空或者找不到对应的子bundle，则返回父bundle*/
- (NSBundle *)subBundleWithName:(NSString *)subBundleName inBundle:(NSBundle *)bundle subDirectory:(NSString *)directory;

#pragma mark - 路径获取
/** bundle下面的资源完整路径*/
- (NSString *)sourcePathFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name;

/** bundle下子目录下的资源完整路径*/
- (NSString *)sourcePathFromBundle:(NSBundle *)bundle inDirectory:(NSString *)directory sourceFullName:(NSString *)name;

/** bundle子bundle子目录下的资源完整路径*/
- (NSString *)sourcePathFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName  inDirectory:(NSString *)directory sourceFullName:(NSString *)name;

#pragma mark - 资源加载
/** 加载bundle下面的资源*/
- (NSData *)loadSourceFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name;
/** 加载bundle下面的json数据*/
- (NSDictionary *)loadJSONFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name error:(NSError **)error;
/** 加载bundle下面的array数据*/
- (NSArray *)loadArrayFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name error:(NSError **)error;

/** 加载bundle下面的plist json数据*/
- (NSDictionary *)loadPlistJSONFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name;
/** 加载bundle下面的plist json数据*/
- (NSDictionary *)loadPlistJSONFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName sourceFullName:(NSString *)name;
/** 加载bundle下面的plist json数据*/
- (NSDictionary *)loadPlistJSONFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name;
/** 加载bundle下面的plist array数据*/
- (NSArray *)loadPlistArrayFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name;
/** 加载bundle下面的plist array数据*/
- (NSArray *)loadPlistArrayFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName sourceFullName:(NSString *)name;
/** 加载bundle下面的plist array数据*/
- (NSArray *)loadPlistArrayFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name;


/** 加载bundle下子目录下的资源*/
- (NSData *)loadSourceFromBundle:(NSBundle *)bundle isDirectory:(NSString *)directory sourceFullName:(NSString *)name;
/** 加载bundle下面的json数据*/
- (NSDictionary *)loadJSONFromBundle:(NSBundle *)bundle isDirectory:(NSString *)directory sourceFullName:(NSString *)name error:(NSError **)error;
/** 加载bundle下面的array数据*/
- (NSArray *)loadArrayFromBundle:(NSBundle *)bundle isDirectory:(NSString *)directory sourceFullName:(NSString *)name error:(NSError **)error;

/** 加载bundle 子bundle下面的资源*/
- (NSData *)loadSourceFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name;
/** 加载bundle下面的json数据*/
- (NSDictionary *)loadJSONFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name error:(NSError **)error;
/** 加载bundle下面的array数据*/
- (NSArray *)loadArrayFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name error:(NSError **)error;

#pragma mark - 图片加载
/** 加载png图片，默认加上scale和.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle imageName:(NSString *)imageName;
/** 加载bundle子目录下面的png图片，默认加上scale和.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle inDirectory:(NSString *)directory imageName:(NSString *)imageName;
/** 加载子bundle的子目录下面的png图片*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle subBundle:(NSString *)subBundle inDirectory:(NSString *)directory imageName:(NSString *)imageName;

/** 加载png图片，needScale决定是否加scale，默认加.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle imageName:(NSString *)imageName needScale:(BOOL)needScale;
/** 加载bundle子目录下面的png图片，needScale决定是否加scale，默认加.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle inDirectory:(NSString *)directory imageName:(NSString *)imageName needScale:(BOOL)needScale;
/** 加载子bundle子目录下面的png图片，needScale决定是否加scale，默认加.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle subBundle:(NSString *)subBundle inDirectory:(NSString *)directory imageName:(NSString *)imageName needScale:(BOOL)needScale;

/** 加载对应bundle图片*/
- (UIImage *)loadImageFromBundle:(NSBundle *)bundle imageFullName:(NSString *)imageFullName;
/** 加载对应bundle图片*/
- (UIImage *)loadImageFromBundle:(NSBundle *)bundle subBundle:(NSString *)subBundle imageFullName:(NSString *)imageFullName;
/** 加载对应bundle子目录下面的图片*/
- (UIImage *)loadImageFromBundle:(NSBundle *)bundle inDirectory:(NSString *)directory imageFullName:(NSString *)imageFullName;
/** 加载对应bundle子目录下面的图片*/
- (UIImage *)loadImageFromBundle:(NSBundle *)bundle subBundle:(NSString *)subBundle inDirectory:(NSString *)directory imageFullName:(NSString *)imageFullName;

@end














