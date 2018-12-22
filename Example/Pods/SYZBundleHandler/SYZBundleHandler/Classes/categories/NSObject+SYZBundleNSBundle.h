//
//  NSObject+SYZBundleNSBundle.h
//  Pods-SYZBundleHandler_Example
//
//  Created by Sunny on 2018/7/25.
//

#import <Foundation/Foundation.h>
#import <SYZBundleHandler/NSObject+SYZBundleHandler.h>

/** 根据用户传入参数，生成对应bundle*/
@interface NSObject (SYZBundleNSBundle)

/** 根据子bundle名字生成对应bundle*/
- (NSBundle *)SYZ_createSubBundleWithName:(NSString *)subBundleName;

/** 根据子bundle名字及目录生成对应bundle*/
- (NSBundle *)SYZ_createSubBundleWithName:(NSString *)subBundleName inDirectory:(NSString *)directory;



@end
