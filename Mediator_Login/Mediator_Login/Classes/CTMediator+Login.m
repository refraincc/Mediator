//
//  CTMediator+Login.m
//  Pods
//
//  Created by cc on 2020/8/20.
//

#import "CTMediator+Login.h"
#import "LoginViewController.h"


// target Name
NSString * const kMediatorTargetLogin = @"MediatorLoginAction";


NSString * const kMediatorActionLogin = @"showLoginViewController";


@implementation CTMediator (Login)


- (void)login_showLoginViewControllerWithFrom:(NSString *)from{
    [self performTarget:kMediatorTargetLogin action:kMediatorActionLogin params:@{@"from" : from} shouldCacheTarget:YES];
}



@end
