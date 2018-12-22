//
//  UIImage+EmptyViewManager.m
//  SYZEmptyPlaceholderKit
//
//  Created by LeeRay on 2018/12/22.
//

#import "UIImage+EmptyViewManager.h"
#import <SYZBundleHandler/SYZBundleHandler.h>
#import "SYZEmptyViewManager.h"

@implementation UIImage (EmptyViewManager)

+ (UIImage *)snh_emptyLoadImage:(NSString*)imageName {
    return [[SYZBundleSourceLoader sharedInstance] loadPNGImageFromBundle:[NSBundle bundleForClass:[SYZEmptyViewManager class]] subBundle:@"mainBundle" inDirectory:nil imageName:imageName];
}

+ (UIImage *)syz_emptyImageDef {
    return [self snh_emptyLoadImage:@"bgVote"];
}

+ (UIImage *)syz_emptyImageNotMemberCard {
    return [self snh_emptyLoadImage:@"membercard_nocard"];
}
@end
