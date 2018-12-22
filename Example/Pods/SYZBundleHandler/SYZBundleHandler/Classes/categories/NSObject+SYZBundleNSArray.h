//
//  NSObject+SYZBundleNSArray.h
//  SYZBundleHandler
//
//  Created by Sunny on 2018/7/25.
//

#import <Foundation/Foundation.h>
#import <SYZBundleHandler/NSObject+SYZBundleHandler.h>

/** 负责加载bundle中array文件*/
@interface NSObject (SYZBundleNSArray)

/** 加载当前类bundle中对应fileFullName的array文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName;
/** 加载当前类bundle中对应fileFullName的json文件，error查看错误信息*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName error:(NSError **)error;

/** 加载当前类bundle子bundle中对应fileFullName的array文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName;
/** 加载当前类bundle子bundle中对应fileFullName的array文件，error查看错误信息*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName error:(NSError **)error;

/** 加载当前类bundle子bundle中子dir对应fileFullName的array文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDirName;
/** 加载当前类bundle子bundle中子dir对应fileFullName的array文件，error查看错误信息*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName subBundle:(NSString *)subBundleName inDir:(NSString *)subDirName error:(NSError **)error;

/** 从bundle中加载json文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName inBundle:(NSBundle *)bundle;
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName inBundle:(NSBundle *)bundle error:(NSError **)error;

/** 从bundle中加载json文件*/
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDirName;
- (NSArray *)SYZ_loadBundleArray:(NSString *)fileFullName inBundle:(NSBundle *)bundle subDir:(NSString *)subDirName error:(NSError **)error;

@end
