//
//  NSObject+SYZBundleNSBundle.m
//  Pods-SYZBundleHandler_Example
//
//  Created by Sunny on 2018/7/25.
//

#import "NSObject+SYZBundleNSBundle.h"

@implementation NSObject (SYZBundleNSBundle)

/** 根据子bundle名字生成对应bundle*/
- (NSBundle *)SYZ_createSubBundleWithName:(NSString *)subBundleName {
    return [GSYZBundleSourceLoader subBundleWithName:subBundleName inBundle:self.SYZ_cachedCurrentBundle];
}

/** 根据子bundle名字及目录生成对应bundle*/
- (NSBundle *)SYZ_createSubBundleWithName:(NSString *)subBundleName inDirectory:(NSString *)directory {
    return [GSYZBundleSourceLoader subBundleWithName:subBundleName inBundle:self.SYZ_cachedCurrentBundle subDirectory:directory];
}



@end
