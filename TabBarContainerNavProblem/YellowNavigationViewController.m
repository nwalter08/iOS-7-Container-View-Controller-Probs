//
//  YellowNavigationViewController.m
//  TabBarContainerNavProblem
//
//  Created by Nick Walter on 2/6/14.
//  Copyright (c) 2014 Nick Walter. All rights reserved.
//

#import "YellowNavigationViewController.h"

@interface YellowNavigationViewController ()

@end

@implementation YellowNavigationViewController

-(id)initWithRootViewController:(UIViewController *)rootViewController {
    self = [super initWithRootViewController:rootViewController];
    if (self) {
        self.view.backgroundColor = [UIColor yellowColor];
        
        NSString *version = [[UIDevice currentDevice] systemVersion];
        BOOL isAtLeast7 = [version floatValue] >= 7.0;
        
        if (isAtLeast7) {
            self.navigationBar.translucent = NO;
        }
    }
    return self;
}

@end
