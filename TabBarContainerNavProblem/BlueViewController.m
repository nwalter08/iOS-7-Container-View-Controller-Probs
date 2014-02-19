//
//  BlueViewController.m
//  TabBarContainerNavProblem
//
//  Created by Nick Walter on 2/6/14.
//  Copyright (c) 2014 Nick Walter. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) UITableView *tableview;
@end

@implementation BlueViewController

- (id)init
{
    self = [super init];
    if (self) {
        _tableview = [UITableView new];
        _tableview.delegate = self;
        _tableview.dataSource = self;
        [self.view addSubview:_tableview];
        self.view.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.tableview.frame = self.view.bounds;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 40;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    cell.textLabel.text = @"Turn Down For What!?";
    return cell;
}

@end
