//
//  RedContainerViewController.m
//  TabBarContainerNavProblem
//
//  Created by Nick Walter on 2/6/14.
//  Copyright (c) 2014 Nick Walter. All rights reserved.
//

#import "RedContainerViewController.h"

@interface RedContainerViewController ()
@property (strong, nonatomic) UIViewController *detailViewController;
@end

@implementation RedContainerViewController

- (id)initWithViewController:(UIViewController*)viewController {
    
    self = [super init];
    
    if (self) {
        _detailViewController = viewController;
        self.view.backgroundColor = [UIColor redColor];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _detailViewController.view.frame = self.view.bounds;
    [self addChildViewController:_detailViewController];
    [self.view addSubview:_detailViewController.view];
    [_detailViewController didMoveToParentViewController:self];
}

@end
