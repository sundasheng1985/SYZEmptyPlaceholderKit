//
//  NSObject+SYZBundleNSDictionary.m
//  SYZBundleHandler
//
//  Created by Sunny on 2018/7/25.
//

#import "NSObject+SYZBundleNSDictionary.h"

@implementation NSObject (SYZBundleNSDictionary)

/** 加载当前类bundle中对应fileFullName的json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName {
    return [self SYZ_loadBundleDictioary:fileFullName subBundle:nil inDir:nil];
}

/** 加载当前类bundle中对应fileFullName的json文件，error查看错误信息*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName error:(NSError **)error {
    return [self SYZ_loadBundleDictioary:fileFullName subBundle:nil inDir:nil error:error];
}

/** 加载当前类bundle子bundle中对应fileFullName的json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName subBundle:(NSString *)subBundleName {
    return [self SYZ_loadBundleDictioary:fileFullName subBundle:subBundleName inDir:nil];
}

/** 加载当前类bundle子bundle中对应fileFullName的json文件，error查看错误信息*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName subBundle:(NSString *)subBundleName error:(NSError **)error {
    return [self SYZ_loadBundleDictioary:fileFullName subBundle:subBundleName inDir:nil error:error];
}

/** 加载当前类bundle子bundle中子dir对应fileFullName的json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDirName {
    return [self SYZ_loadBundleDictioary:fileFullName subBundle:subBundleName inDir:subDirName error:nil];
}

/** 加载当前类bundle子bundle中子dir对应fileFullName的json文件，error查看错误信息*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDirName error:(NSError **)error {
    return [GSYZBundleSourceLoader loadJSONFromBundle:self.SYZ_cachedCurrentBundle
                                        subBundleName:subBundleName
                                          inDirectory:subDirName
                                       sourceFullName:fileFullName
                                                error:error];
}

/** 从bundle中加载json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName inBundle:(NSBundle *)bundle {
    return [self SYZ_loadBundleDictioary:fileFullName inBundle:bundle error:nil];
}

- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName inBundle:(NSBundle *)bundle error:(NSError **)error {
    return [self SYZ_loadBundleDictioary:fileFullName inBundle:bundle subDir:nil error:error];
}

/** 从bundle中加载json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDirName {
    return [self SYZ_loadBundleDictioary:fileFullName inBundle:bundle subDir:subDirName error:nil];
}

- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDirName error:(NSError **)error {
    if (subDirName != nil) {
        bundle = [GSYZBundleSourceLoader subBundleWithDirectory:subDirName inBundle:bundle];
    }
    return [GSYZBundleSourceLoader loadJSONFromBundle:bundle sourceFullName:fileFullName error:error];
}

/** 加载plist文件*/
- (NSDictionary *)SYZ_loadPlistJSON:(NSString *)fileFullName {
    return [self SYZ_loadPlistJSON:fileFullName subBundle:nil subDir:nil];
}

- (NSDictionary *)SYZ_loadPlistJSON:(NSString *)fileFullName subBundle:(NSString *)subBundleName {
    return [self SYZ_loadPlistJSON:fileFullName subBundle:subBundleName subDir:nil];
}

- (NSDictionary *)SYZ_loadPlistJSON:(NSString *)fileFullName subBundle:(NSString *)subBundleName subDir:(NSString *)subDirName {
    return [GSYZBundleSourceLoader loadPlistJSONFromBundle:self.SYZ_cachedCurrentBundle subBundleName:subBundleName sourceFullName:fileFullName];
}

@end




