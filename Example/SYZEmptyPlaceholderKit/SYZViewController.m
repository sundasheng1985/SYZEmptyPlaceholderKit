//
//  SYZViewController.m
//  SYZEmptyPlaceholderKit
//
//  Created by sundasheng1985 on 12/22/2018.
//  Copyright (c) 2018 sundasheng1985. All rights reserved.
//

#import "SYZViewController.h"
#import <SYZEmptyPlaceholderKit/SYZEmptyPlaceholderKit.h>

@interface SYZViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *list;
@end

@implementation SYZViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    
//    sleep(2);
//    for (int i = 0; i < 30; i++) {
//        [self.list addObject:[NSString stringWithFormat:@"当前是%d",i]];
//    }
//    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.list[indexPath.row];
    return cell;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.syz_emptyImage = [UIImage imageNamed:@"bgVote.png"];
        _tableView.syz_empty = @(1);
        
    }
    return _tableView;
}

- (NSMutableArray *)list{
    if (!_list) {
        _list = [NSMutableArray array];
    }
    return _list;
}

@end
