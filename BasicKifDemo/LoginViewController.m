//
//  LoginViewController.m
//  BasicKifDemo
//
//  Created by Guilherme Silva on 9/11/16.
//  Copyright © 2016 Guilherme B G Silva. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.85 alpha:1.0];
    
    UITextField *usernameField = [[UITextField alloc] initWithFrame:CGRectMake(20, 30, 300, 40)];
    usernameField.placeholder = @"username";
    usernameField.accessibilityLabel = @"Username Field";
    usernameField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:usernameField];
    
    UITextField *passwordField = [[UITextField alloc] initWithFrame:CGRectMake(20, 90, 300, 40)];
    passwordField.placeholder = @"password";
    passwordField.secureTextEntry = YES;
    passwordField.accessibilityLabel = @"Password Field";
    passwordField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:passwordField];
    
    
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    submitButton.frame = CGRectMake(20, 150, 150, 40);
    [submitButton setTitle:@"Submit" forState:UIControlStateNormal];
    submitButton.accessibilityLabel = @"Submit Button";
    [submitButton addTarget:self action:@selector(submitButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    submitButton.backgroundColor = [UIColor redColor];
    [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [self.view addSubview:submitButton];
}

-(void) submitButtonPressed:(id) sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
