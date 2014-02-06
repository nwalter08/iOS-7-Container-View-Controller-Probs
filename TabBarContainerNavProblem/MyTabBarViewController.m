//
//  MyTabBarViewController.m
//  TabBarContainerNavProblem
//
//  Created by Nick Walter on 2/6/14.
//  Copyright (c) 2014 Nick Walter. All rights reserved.
//

#import "MyTabBarViewController.h"
#import "BlueViewController.h"
#import "YellowNavigationViewController.h"
#import "RedContainerViewController.h"

@interface MyTabBarViewController ()

@end

@implementation MyTabBarViewController

- (id)init
{
    self = [super init];
    if (self) {
        BlueViewController *blueViewController = [BlueViewController new];
        YellowNavigationViewController *yellowNavigationViewController = [[YellowNavigationViewController alloc] initWithRootViewController:blueViewController];
        RedContainerViewController *redContainerViewController = [[RedContainerViewController alloc] initWithViewController:yellowNavigationViewController];
        redContainerViewController.tabBarItem.title = @"My Tab";
        [self setViewControllers:@[redContainerViewController ]];
        
        NSString *version = [[UIDevice currentDevice] systemVersion];
        BOOL isAtLeast7 = [version floatValue] >= 7.0;
        
        if (isAtLeast7) {
            self.tabBar.translucent = NO;
        }
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
