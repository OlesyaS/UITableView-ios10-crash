//
//  ViewController.m
//  table
//
//  Created by Olesya Slepchenko on 11/11/2017.
//  Copyright © 2017 lineate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController
{
    UITableView * _table;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _table = [UITableView new];
    [self.view addSubview:_table];
    
    _table.dataSource = self;
    _table.delegate = self;
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    _table.frame = self.view.bounds;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [UITableViewCell new];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    return 1; // will be a crash on ios10.
    return 1.01;
}

@end
