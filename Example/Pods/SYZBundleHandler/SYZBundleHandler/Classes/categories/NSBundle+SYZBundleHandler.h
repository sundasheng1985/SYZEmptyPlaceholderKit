//
//  NSBundle+SYZBundleHandler.h
//  SYZBundleHandler
//
//  Created by Sunny on 2018/7/25.
//

#import <Foundation/Foundation.h>
#import <SYZBundleHandler/SYZBundleSourceLoader.h>

@interface NSBundle (SYZBundleHandler)

/** 为bundle下面的目录建立新bundle*/
- (NSBundle *)SYZ_appendSubDir:(NSString *)subDir;

@end
