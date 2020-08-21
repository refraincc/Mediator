//
//  LoginViewController.m
//  Pods
//
//  Created by cc on 2020/8/20.
//

#import "LoginViewController.h"
#import "NSBundle+Login.h"
#import "CTMediator+Main.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UILabel *fromLabel;

@property (nonatomic, copy) NSString *from;



@end

@implementation LoginViewController



+ (instancetype)viewControllerWithFrom:(NSString *)from{
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Login" bundle:[NSBundle login_bundle]];
    
    LoginViewController *vc = [sb instantiateViewControllerWithIdentifier:@"LoginViewController"];
    vc.from = from;
    vc.title = from;
    return vc;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.fromLabel.text = self.from;
    
}


- (void)alertWithTitle:(NSString *)title{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:@"" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
        [self.navigationController popViewControllerAnimated:YES];
        
        NSString *uid = @(arc4random() % 100000).stringValue;
        
        [[CTMediator sharedInstance] main_loginSuccessHandler:@{@"uid" : uid}];
    }];
    
    [alertController addAction:cancel];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}


- (IBAction)login:(id)sender {
    [self alertWithTitle:@"Login Success!"];
}

- (IBAction)loginOut:(id)sender {
    [self alertWithTitle:@"Login Out Success!"];
}

@end
