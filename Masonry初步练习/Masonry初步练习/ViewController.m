//
//  ViewController.m
//  Masonry初步练习
//
//  Created by mac on 2018/10/13.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "ViewController.h"
#import "JKWTableViewCell.h"
#import <Masonry.h>
#define kDeviceWidth [UIScreen mainScreen].bounds.size.width
#define kDeviceHeight [UIScreen mainScreen].bounds.size.height

static NSString *cellIdentifier1 = @"cell1";

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.97f green:0.97f blue:0.97f alpha:1.00f];
    _tableView = [[UITableView alloc] init];
    [self.view addSubview:_tableView];
    _tableView.showsVerticalScrollIndicator = NO;
    [_tableView registerClass:[JKWTableViewCell class] forCellReuseIdentifier:cellIdentifier1];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    __weak typeof (self) weakSelf = self;
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(weakSelf.view);
        make.width.mas_equalTo(kDeviceWidth);
        make.height.mas_equalTo(kDeviceHeight);
    }];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JKWTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier1 forIndexPath:indexPath];
    cell1.backgroundColor = [UIColor colorWithRed:0.97f green:0.97f blue:0.97f alpha:1.00f];
    return cell1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return kDeviceHeight * (200 + 32)/1334.0;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


@end
