//
//  ViewController.m
//  BasicKifDemo
//
//  Created by Guilherme Silva on 9/11/16.
//  Copyright © 2016 Guilherme B G Silva. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    loginButton.frame = CGRectMake(30, 30, 100, 40);
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    loginButton.backgroundColor = [UIColor blueColor];
    [loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(loginButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    loginButton.accessibilityLabel = @"Login Button";
    [self.view addSubview:loginButton];
}

-(void) loginButtonPressed:(id) sender {
    LoginViewController *loginViewController = [LoginViewController new];
    [self presentViewController:loginViewController animated:YES completion:nil];
}

@end
