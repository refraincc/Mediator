//
//  CTMediator+Main.m
//  Mediator_Main
//
//  Created by cc on 2020/8/21.
//


// target Name
NSString * const kMediatorTargetMain = @"MediatorMainAction";

// action Name
NSString * const kMediatorActionLoginSuccess = @"loginSuccessHandler";


#import "CTMediator+Main.h"


@implementation CTMediator (Main)


- (void)main_loginSuccessHandler:(NSDictionary *)info{
    
    [self performTarget:kMediatorTargetMain action:kMediatorActionLoginSuccess params:info shouldCacheTarget:NO];
    
}




@end
