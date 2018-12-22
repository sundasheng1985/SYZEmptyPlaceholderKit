//
//  NSObject+SYZBundleNSArray.m
//  SYZBundleHandler
//
//  Created by Sunny on 2018/7/25.
//

#import "NSObject+SYZBundleNSArray.h"

@implementation NSObject (SYZBundleNSArray)

/** 加载当前类bundle中对应fileFullName的array文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName {
    return [self SYZ_loadBundleArray:fileFullName subBundle:nil inDir:nil];
}

/** 加载当前类bundle中对应fileFullName的array文件，error查看错误信息*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName error:(NSError **)error {
    return [self SYZ_loadBundleArray:fileFullName subBundle:nil inDir:nil error:error];
}

/** 加载当前类bundle子bundle中对应fileFullName的array文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName {
    return [self SYZ_loadBundleArray:fileFullName subBundle:subBundleName inDir:nil];
}

/** 加载当前类bundle子bundle中对应fileFullName的array文件，error查看错误信息*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName error:(NSError **)error {
    return [self SYZ_loadBundleArray:fileFullName subBundle:subBundleName inDir:nil error:error];
}

/** 加载当前类bundle子bundle中子dir对应fileFullName的array文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDirName {
    return [self SYZ_loadBundleArray:fileFullName subBundle:subBundleName inDir:subDirName error:nil];
}

/** 加载当前类bundle子bundle中子dir对应fileFullName的array文件，error查看错误信息*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDirName error:(NSError **)error {
    return [GSYZBundleSourceLoader loadArrayFromBundle:self.SYZ_cachedCurrentBundle
                                         subBundleName:subBundleName
                                           inDirectory:subDirName
                                        sourceFullName:fileFullName
                                                 error:error];
}

/** 从bundle中加载json文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName inBundle:(NSBundle *)bundle {
    return [self SYZ_loadBundleArray:fileFullName inBundle:bundle error:nil];
}

- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName inBundle:(NSBundle *)bundle error:(NSError **)error {
    return [self SYZ_loadBundleArray:fileFullName inBundle:bundle subDir:nil];
}

/** 从bundle中加载json文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDirName {
    return [self SYZ_loadBundleArray:fileFullName inBundle:bundle subDir:subDirName error:nil];
}

- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDirName error:(NSError **)error {
    if (subDirName != nil) {
        bundle = [GSYZBundleSourceLoader subBundleWithDirectory:subDirName inBundle:bundle];
    }
    return [GSYZBundleSourceLoader loadArrayFromBundle:bundle sourceFullName:fileFullName error:error];
}

/** 加载plist文件*/
- (NSArray *)SYZ_loadPlistArray:(NSString *)fileFullName {
    return [self SYZ_loadPlistArray:fileFullName subBundle:nil subDir:nil];
}

- (NSArray *)SYZ_loadPlistArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName {
    return [self SYZ_loadPlistArray:fileFullName subBundle:subBundleName subDir:nil];
}

- (NSArray *)SYZ_loadPlistArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName subDir:(NSString *)subDirName {
    return [GSYZBundleSourceLoader loadPlistArrayFromBundle:self.SYZ_cachedCurrentBundle subBundleName:subBundleName sourceFullName:fileFullName];
}

@end




