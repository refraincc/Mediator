//
//  MediatorLoginAction.m
//  Login_Project
//
//  Created by cc on 2020/8/21.
//

#import "MediatorLoginAction.h"
#import "LoginViewController.h"
#import "UIViewController+Login.h"

@implementation MediatorLoginAction

- (void)showLoginViewController:(NSDictionary *)info{
    
    NSLog(@"%s, %@",__func__ ,info);
    
    LoginViewController *vc = [LoginViewController viewControllerWithFrom:info[@"from"]];
    
    [[UIViewController currentViewController].navigationController pushViewController:vc animated:YES];
}


@end
