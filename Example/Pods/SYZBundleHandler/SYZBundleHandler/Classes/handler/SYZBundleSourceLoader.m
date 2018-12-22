//
//  SYZBundleSourceLoader.m
//  Pods-SYZDemo_Example
//
//  Created by Sunny on 2018/7/24.
//

#import "SYZBundleSourceLoader.h"

static NSString* png_suffix = @".png";
static NSString* gif_suffix = @".gif";
static NSString* bundle_suffix = @"bundle";

@interface SYZBundleSourceLoader()
@property (nonatomic,assign) unsigned int scale;
@property (nonatomic,copy) NSString * scaleSuffix;
@end

@implementation SYZBundleSourceLoader

- (instancetype)init
{
    self = [super init];
    if (self) {
        _scale = [UIScreen mainScreen].scale;
        _scaleSuffix = [NSString stringWithFormat:@"@%dx",_scale];
    }
    return self;
}

+ (instancetype)sharedInstance {
    static SYZBundleSourceLoader *_defaultLoader = nil;
    if (_defaultLoader == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _defaultLoader = [SYZBundleSourceLoader new];
        });
    }
    return _defaultLoader;
}

/** 获取bundle中名字为bundleName的子bundle，如果bundleName为空或者找不到对应的子bundle，则返回父bundle*/
- (NSBundle *)subBundleWithName:(NSString *)subBundleName inBundle:(NSBundle *)bundle {
    return [self subBundleWithName:subBundleName inBundle:bundle subDirectory:nil];
}

/** 获取bundle下面子目录的bundle*/
- (NSBundle *)subBundleWithDirectory:(NSString *)directory inBundle:(NSBundle *)bundle {
    return [self subBundleWithName:nil inBundle:bundle subDirectory:directory];
}

/** 获取bundle中名字为bundleName的子bundle下的子目录bundle，如果bundleName为空或者找不到对应的子bundle，则返回父bundle*/
- (NSBundle *)subBundleWithName:(NSString *)subBundleName inBundle:(NSBundle *)bundle subDirectory:(NSString *)directory {
    NSBundle *targetBundle = bundle;
    if (subBundleName != nil) {
        NSURL *url = [bundle URLForResource:subBundleName withExtension:@"bundle"];
        if (url != nil) {
            targetBundle = [NSBundle bundleWithURL:url];
        }
    }

    if (directory) {
        NSString *directoryBundlePath = [targetBundle.bundlePath stringByAppendingPathComponent:directory];
        if (directoryBundlePath != nil) {
            targetBundle = [NSBundle bundleWithPath:directoryBundlePath];
        }
    }

    return targetBundle;
}

/** 加载bundle下面的资源*/
- (NSData *)loadSourceFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name {
    return [self loadSourceFromBundle:bundle isDirectory:nil sourceFullName:name];
}

#pragma mark - 路径获取
/** 加载bundle下面的资源完整路径*/
- (NSString *)sourcePathFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name {
    return [self sourcePathFromBundle:bundle subBundleName:nil inDirectory:nil sourceFullName:name];
}

/** 加载bundle下子目录下的资源完整路径*/
- (NSString *)sourcePathFromBundle:(NSBundle *)bundle inDirectory:(NSString *)directory sourceFullName:(NSString *)name {
    return [self sourcePathFromBundle:bundle subBundleName:nil inDirectory:directory sourceFullName:name];
}

/** bundle子bundle子目录下的资源完整路径*/
- (NSString *)sourcePathFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName  inDirectory:(NSString *)directory sourceFullName:(NSString *)name {
    return [[self subBundleWithName:subBundleName inBundle:bundle subDirectory:directory] pathForResource:name ofType:nil];
}

#pragma mark - 资源加载
/** 加载bundle下面的json数据*/
- (NSDictionary *)loadJSONFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name error:(NSError *__autoreleasing *)error {
    return [self loadJSONFromBundle:bundle subBundleName:nil inDirectory:nil sourceFullName:name error:error];
}
/** 加载bundle下面的array数据*/
- (NSArray *)loadArrayFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name error:(NSError *__autoreleasing *)error {
    return [self loadArrayFromBundle:bundle subBundleName:nil inDirectory:nil sourceFullName:name error:error];
}

/** 加载bundle下子目录下的资源*/
- (NSData *)loadSourceFromBundle:(NSBundle *)bundle isDirectory:(NSString *)directory sourceFullName:(NSString *)name {
    return [self loadSourceFromBundle:bundle subBundleName:nil inDirectory:directory sourceFullName:name];
}

/** 加载bundle下面的plist json数据*/
- (NSDictionary *)loadPlistJSONFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name {
    return [self loadPlistJSONFromBundle:bundle subBundleName:nil inDirectory:nil sourceFullName:name];
}

/** 加载bundle下面的plist json数据*/
- (NSDictionary *)loadPlistJSONFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName sourceFullName:(NSString *)name {
    return [self loadPlistJSONFromBundle:bundle subBundleName:subBundleName inDirectory:nil sourceFullName:name];
}

/** 加载bundle下面的plist json数据*/
- (NSDictionary *)loadPlistJSONFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name {
    NSString *plistPath = [self sourcePathFromBundle:bundle subBundleName:subBundleName inDirectory:directory sourceFullName:name];
    return [[NSDictionary alloc] initWithContentsOfFile:plistPath];
}

/** 加载bundle下面的plist array数据*/
- (NSArray *)loadPlistArrayFromBundle:(NSBundle *)bundle sourceFullName:(NSString *)name {
    return [self loadPlistArrayFromBundle:bundle subBundleName:nil inDirectory:nil sourceFullName:name];
}

/** 加载bundle下面的plist array数据*/
- (NSArray *)loadPlistArrayFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName sourceFullName:(NSString *)name {
    return [self loadPlistArrayFromBundle:bundle subBundleName:subBundleName inDirectory:nil sourceFullName:name];
}

/** 加载bundle下面的plist array数据*/
- (NSArray *)loadPlistArrayFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name {
    NSString *plistPath = [self sourcePathFromBundle:bundle subBundleName:subBundleName inDirectory:directory sourceFullName:name];
    return [[NSArray alloc] initWithContentsOfFile:plistPath];
}

/** 加载bundle下面的json数据*/
- (NSDictionary *)loadJSONFromBundle:(NSBundle *)bundle isDirectory:(NSString *)directory sourceFullName:(NSString *)name error:(NSError *__autoreleasing *)error {
    return [self loadJSONFromBundle:bundle subBundleName:nil inDirectory:nil sourceFullName:name error:error];
}

/** 加载bundle下面的array数据*/
- (NSArray *)loadArrayFromBundle:(NSBundle *)bundle isDirectory:(NSString *)directory sourceFullName:(NSString *)name error:(NSError *__autoreleasing *)error {
    return [self loadArrayFromBundle:bundle subBundleName:nil inDirectory:nil sourceFullName:name error:error];
}

/** 加载bundle 子bundle下面的资源*/
- (NSData *)loadSourceFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name {
    NSString *sourcePath = [self sourcePathFromBundle:bundle subBundleName:subBundleName inDirectory:directory sourceFullName:name];
    return [NSData dataWithContentsOfFile:sourcePath];
}

/** 加载bundle下面的json数据*/
- (NSDictionary *)loadJSONFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name error:(NSError *__autoreleasing *)error {
    NSData *jsonData = [self loadSourceFromBundle:bundle subBundleName:subBundleName inDirectory:directory sourceFullName:name];
    if (jsonData) {
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:error];
        if (json && [json isKindOfClass:[NSDictionary class]]) {
            return json;
        }
    }
    return nil;
}

/** 加载bundle下面的array数据*/
- (NSArray *)loadArrayFromBundle:(NSBundle *)bundle subBundleName:(NSString *)subBundleName inDirectory:(NSString *)directory sourceFullName:(NSString *)name error:(NSError *__autoreleasing *)error {
    NSData *arrayData = [self loadSourceFromBundle:bundle subBundleName:subBundleName inDirectory:directory sourceFullName:name];
    if (arrayData) {
        NSArray *array = [NSJSONSerialization JSONObjectWithData:arrayData options:NSJSONReadingMutableContainers error:error];
        if (array && [array isKindOfClass:[NSArray class]]) {
            return array;
        }
    }
    return nil;
}

#pragma mark - 图片加载
/** 加载png图片，默认加上scale和.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle imageName:(NSString *)imageName {
    return [self loadPNGImageFromBundle:bundle inDirectory:nil imageName:imageName];
}

/** 加载bundle子目录下面的png图片，默认加上scale和.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle inDirectory:(NSString *)directory imageName:(NSString *)imageName {
    return [self loadPNGImageFromBundle:bundle subBundle:nil inDirectory:directory imageName:imageName];
}

/** 加载子bundle的子目录下面的png图片*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle subBundle:(NSString *)subBundle inDirectory:(NSString *)directory imageName:(NSString *)imageName {
    return [self loadPNGImageFromBundle:bundle subBundle:subBundle inDirectory:directory imageName:imageName needScale:YES];
}

/** 加载png图片，needScale决定是否加scale，默认加.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle imageName:(NSString *)imageName needScale:(BOOL)needScale {
    return [self loadPNGImageFromBundle:bundle subBundle:nil inDirectory:nil imageName:imageName needScale:needScale];
}

/** 加载bundle子目录下面的png图片，needScale决定是否加scale，默认加.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle inDirectory:(NSString *)directory imageName:(NSString *)imageName needScale:(BOOL)needScale {
    return [self loadPNGImageFromBundle:bundle subBundle:nil inDirectory:directory imageName:imageName needScale:needScale];
}

/** 加载子bundle子目录下面的png图片，needScale决定是否加scale，默认加.png*/
- (UIImage *)loadPNGImageFromBundle:(NSBundle *)bundle subBundle:(NSString *)subBundle inDirectory:(NSString *)directory imageName:(NSString *)originName needScale:(BOOL)needScale {
    NSString* imageName = [originName copy];
    if (needScale) {
        imageName = [imageName stringByAppendingString:self.scaleSuffix];
    }

    imageName = [imageName stringByAppendingString:png_suffix];
    UIImage* img = [self loadImageFromBundle:bundle subBundle:subBundle inDirectory:directory imageFullName:imageName];
    if (img == nil) {
        imageName = [originName stringByAppendingString:png_suffix];
        img = [self loadImageFromBundle:bundle subBundle:subBundle inDirectory:directory imageFullName:imageName];
        if (img == nil) {
            imageName = [originName stringByAppendingString:gif_suffix];
            img = [self loadImageFromBundle:bundle subBundle:subBundle inDirectory:directory imageFullName:imageName];
        }
    }
    return img;
}

/** 加载对应bundle图片*/
- (UIImage *)loadImageFromBundle:(NSBundle *)bundle imageFullName:(NSString *)imageFullName {
    return [self loadImageFromBundle:bundle inDirectory:nil imageFullName:imageFullName];
}

/** 加载对应bundle子目录下面的图片*/
- (UIImage *)loadImageFromBundle:(NSBundle *)bundle inDirectory:(NSString *)directory imageFullName:(NSString *)imageFullName {
    return [self loadImageFromBundle:bundle subBundle:nil inDirectory:directory imageFullName:imageFullName];
}

/** 加载对应bundle图片*/
- (UIImage *)loadImageFromBundle:(NSBundle *)bundle subBundle:(NSString *)subBundle imageFullName:(NSString *)imageFullName {
    return [self loadImageFromBundle:bundle subBundle:subBundle inDirectory:nil imageFullName:imageFullName];
}

/** 加载对应bundle子目录下面的图片*/
- (UIImage *)loadImageFromBundle:(NSBundle *)bundle subBundle:(NSString *)subBundle inDirectory:(NSString *)directory imageFullName:(NSString *)imageFullName {
    if (bundle == nil || ![bundle isKindOfClass:[NSBundle class]]) return nil;
    if (imageFullName == nil) return nil;

    NSBundle *targetBundle = [self subBundleWithName:subBundle inBundle:bundle subDirectory:directory];

//    UIImage *img = [UIImage imageNamed:imageFullName inBundle:targetBundle compatibleWithTraitCollection:nil];
    NSData* data = [self loadSourceFromBundle:bundle subBundleName:subBundle inDirectory:directory sourceFullName:imageFullName];
    if (!data) {
        return [UIImage imageNamed:imageFullName inBundle:targetBundle compatibleWithTraitCollection:nil];
    }

    CGImageSourceRef source = CGImageSourceCreateWithData((__bridge CFDataRef)data, NULL);
    size_t count = CGImageSourceGetCount(source);

    UIImage* animatedImage;
    if (count <= 1) {
        animatedImage = [[UIImage alloc] initWithData:data];
    } else {
        NSMutableArray* images = [NSMutableArray new];
        NSTimeInterval duration = 0.0f;
        for (size_t i = 0; i < count; i++) {
            CGImageRef image = CGImageSourceCreateImageAtIndex(source, i, NULL);
            NSDictionary* properties = (__bridge NSDictionary*)CGImageSourceCopyPropertiesAtIndex(source, i , nil);
//            CGFloat width = [[properties objectForKey:(__bridge NSString*)kCGImagePropertyPixelWidth] floatValue];
//            CGFloat height = [[properties objectForKey:(__bridge NSString*)kCGImagePropertyPixelHeight] floatValue];
            NSDictionary* timeInfo = [properties objectForKey:(__bridge NSString*)kCGImagePropertyGIFDictionary];
            CGFloat time = [[timeInfo objectForKey:(__bridge NSString*)kCGImagePropertyGIFDelayTime] floatValue];
            duration += time;
            [images addObject:[UIImage imageWithCGImage:image]];
            CGImageRelease(image);
            CFRelease((__bridge CFTypeRef)properties);
        }
        animatedImage = [UIImage animatedImageWithImages:images duration:duration];
    }

    CFRelease(source);

    return animatedImage;
}

@end

















