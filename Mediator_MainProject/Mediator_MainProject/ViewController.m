//
//  ViewController.m
//  Mediator_MainProject
//
//  Created by cc on 2020/8/20.
//  Copyright © 2020 refraincc. All rights reserved.
//

#import "ViewController.h"
#import <CTMediator+Login.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)gotoLogin:(id)sender {
    
    
    [[CTMediator sharedInstance] login_showLoginViewControllerWithFrom:@"Main_Project"];
    
    
}

@end
