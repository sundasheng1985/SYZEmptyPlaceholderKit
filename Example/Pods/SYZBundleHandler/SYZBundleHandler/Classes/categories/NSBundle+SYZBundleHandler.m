//
//  NSBundle+SYZBundleHandler.m
//  SYZBundleHandler
//
//  Created by Sunny on 2018/7/25.
//

#import "NSBundle+SYZBundleHandler.h"

@implementation NSBundle (SYZBundleHandler)

/** 为bundle下面的目录建立新bundle*/
- (NSBundle *)SYZ_appendSubDir:(NSString *)subDir {
    return [GSYZBundleSourceLoader subBundleWithDirectory:subDir inBundle:self];
}

@end
