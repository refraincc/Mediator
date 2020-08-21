//
//  NSBundle+Login.m
//  Pods
//
//  Created by cc on 2020/8/20.
//

#import "NSBundle+Login.h"
#import "LoginViewController.h"



@implementation NSBundle (Login)

+ (instancetype)login_bundle {
    static NSBundle *loginBundle = nil;
    if (loginBundle == nil) {
        NSBundle *bundle = [NSBundle bundleForClass:[LoginViewController class]];
        NSURL *url = [bundle URLForResource:@"Login_Project" withExtension:@"bundle"];
        loginBundle = [self bundleWithURL:url];
    }
    return loginBundle;
}



@end
