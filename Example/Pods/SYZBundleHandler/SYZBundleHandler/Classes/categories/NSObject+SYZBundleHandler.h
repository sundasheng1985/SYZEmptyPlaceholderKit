//
//  NSObject+SYZBundleHandler.h
//  Pods-SYZBundleHandler_Example
//
//  Created by Sunny on 2018/7/25.
//

#import <Foundation/Foundation.h>
#import <SYZBundleHandler/SYZBundleSourceLoader.h>

@interface NSObject (SYZBundleHandler)

/** 缓存当前类所在bundle*/
- (NSBundle *)SYZ_cachedCurrentBundle;

/** 设置图片所在的bundle名字*/
@property (nonatomic,copy) NSString * SYZ_imageBundleName;

@end
