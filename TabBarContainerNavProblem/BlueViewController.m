//
//  BlueViewController.m
//  TabBarContainerNavProblem
//
//  Created by Nick Walter on 2/6/14.
//  Copyright (c) 2014 Nick Walter. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

@end
