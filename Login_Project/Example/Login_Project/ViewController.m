//
//  ViewController.m
//  Login_Project_Example
//
//  Created by cc on 2020/8/20.
//  Copyright © 2020 refrainc21@gmail.com. All rights reserved.
//

#import "ViewController.h"
#import <LoginViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    LoginViewController *vc = [LoginViewController viewControllerWithFrom:@"Login_Project"];
    
    [self.navigationController pushViewController:vc animated:YES];
    
    
}


@end
