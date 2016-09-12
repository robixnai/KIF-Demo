//
//  KifTests.m
//  BasicKifDemo
//
//  Created by Guilherme Silva on 9/11/16.
//  Copyright © 2016 Guilherme B G Silva. All rights reserved.
//

#import "KifTests.h"

@implementation KifTests

-(void) beforeEach {
}

-(void) afterEach {
}


-(void) testLogin {
    [self navigateToLogin];
    
    [tester waitForViewWithAccessibilityLabel:@"Username Field"];
    [tester enterText:@"Myusername" intoViewWithAccessibilityLabel:@"Username Field"];
    [tester enterText:@"mypassword" intoViewWithAccessibilityLabel:@"Password Field"];
    [tester tapViewWithAccessibilityLabel:@"Submit Button"];
    
    [tester waitForViewWithAccessibilityLabel:@"Login Button"];
}

-(void) testSignOut {
}

-(void) navigateToLogin {
    [tester waitForTappableViewWithAccessibilityLabel:@"Login Button"];
    [tester tapViewWithAccessibilityLabel:@"Login Button"];
}



@end
