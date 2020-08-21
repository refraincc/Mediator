//
//  MediatorMainAction.m
//  Mediator_MainProject
//
//  Created by cc on 2020/8/21.
//  Copyright © 2020 refraincc. All rights reserved.
//

#import "MediatorMainAction.h"
#import <UIKit/UIKit.h>
#import <UIViewController+Login.h>

@implementation MediatorMainAction

- (void)loginSuccessHandler:(NSDictionary *)info{
    
    NSLog(@"%s, %@",__func__ ,info[@"uid"]);
    
    NSString *message = [NSString stringWithFormat:@"uid = %@", info[@"uid"]];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"登陆成功" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:cancel];
    
    
    [[UIViewController currentViewController] presentViewController:alert animated:YES completion:nil];
    
    
    
}

@end
