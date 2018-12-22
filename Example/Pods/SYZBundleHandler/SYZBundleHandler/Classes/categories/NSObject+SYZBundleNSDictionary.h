//
//  NSObject+SYZBundleNSDictionary.h
//  SYZBundleHandler
//
//  Created by Sunny on 2018/7/25.
//

#import <Foundation/Foundation.h>
#import <SYZBundleHandler/NSObject+SYZBundleHandler.h>

/** 负责加载bundle中json文件*/
@interface NSObject (SYZBundleNSDictionary)

/** 加载当前类bundle中对应fileFullName的json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName;
/** 加载当前类bundle中对应fileFullName的json文件，error查看错误信息*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName error:(NSError **)error;

/** 加载当前类bundle子bundle中对应fileFullName的json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName subBundle:(NSString *)subBundleName;
/** 加载当前类bundle子bundle中对应fileFullName的json文件，error查看错误信息*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName subBundle:(NSString *)subBundleName error:(NSError **)error;

/** 加载当前类bundle子bundle中子dir对应fileFullName的json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDirName;
/** 加载当前类bundle子bundle中子dir对应fileFullName的json文件，error查看错误信息*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDirName error:(NSError **)error;

/** 从bundle中加载json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName inBundle:(NSBundle *)bundle;
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName inBundle:(NSBundle *)bundle error:(NSError **)error;

/** 从bundle中加载json文件*/
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDirName;
- (NSDictionary *)SYZ_loadBundleDictioary:(NSString *)fileFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDirName error:(NSError **)error;

/** 加载plist文件*/
- (NSDictionary *)SYZ_loadPlistJSON:(NSString *)fileFullName;
- (NSDictionary *)SYZ_loadPlistJSON:(NSString *)fileFullName subBundle:(NSString *)subBundleName;
- (NSDictionary *)SYZ_loadPlistJSON:(NSString *)fileFullName subBundle:(NSString *)subBundleName subDir:(NSString *)subDirName;
@end





