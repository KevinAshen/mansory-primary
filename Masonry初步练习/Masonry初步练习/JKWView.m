//
//  JKWView.m
//  Masonry初步练习
//
//  Created by mac on 2018/10/15.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "JKWView.h"
#import <Masonry.h>
#define kDeviceWidth [UIScreen mainScreen].bounds.size.width
#define kDeviceHeight [UIScreen mainScreen].bounds.size.height

@implementation JKWView

- (instancetype)init {
    self = [super init];
    if (self) {
        self.layer.borderWidth = 5;
        self.layer.borderColor = [[UIColor colorWithRed:0.35f green:0.72f blue:1.00f alpha:1.00f] CGColor];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 15;
        __weak typeof (self) weakSelf = self;
        _titleLabel = [[UILabel alloc] init];
        [self addSubview:_titleLabel];
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kDeviceWidth * 640 / 750.0);
            make.height.mas_equalTo(kDeviceHeight * 25 / 1334.0);
            make.top.equalTo(weakSelf).with.offset(kDeviceHeight * 38 / 1334.0);
            make.left.equalTo(weakSelf).with.offset(kDeviceWidth * 30 / 750.0);
        }];
        _titleLabel.text = @"C语言程序设计II";
        _titleLabel.textColor = [UIColor blackColor];
        
        _blackLabel1 = [[JKWLabel alloc] init];
        [self addSubview:_blackLabel1];
        [_blackLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kDeviceWidth * 38 * 2.75 / 750.0);
            make.height.mas_equalTo(kDeviceHeight * 25 / 1334.0);
            make.top.equalTo(weakSelf.titleLabel).offset(kDeviceHeight * (24 + 25) / 1334.0);
            make.left.equalTo(weakSelf).offset(kDeviceWidth * 30 / 750.0);
        }];
        _blackLabel1.text = @"课程号：";
        
        _blackLabel3 = [[JKWLabel alloc] init];
        [self addSubview:_blackLabel3];
        [_blackLabel3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kDeviceWidth * 38 * 2.1 / 750.0);
            make.height.mas_equalTo(kDeviceHeight * 25 / 1334.0);
            make.top.equalTo(weakSelf.titleLabel).offset(kDeviceHeight * (24 + 25) / 1334.0);
            make.left.equalTo(weakSelf).offset(kDeviceWidth * 498 / 750.0);
        }];
        _blackLabel3.text = @"学分：";
        
        _blackLabel2 = [[JKWLabel alloc] init];
        [self addSubview:_blackLabel2];
        [_blackLabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kDeviceWidth * 38 * 2.1 / 750.0);
            make.height.mas_equalTo(kDeviceHeight * 25 / 1334.0);
            make.top.equalTo(weakSelf.blackLabel1).offset(kDeviceHeight * (24 + 25) / 1334.0);
            make.left.equalTo(weakSelf).offset(kDeviceWidth * 30 / 750.0);
        }];
        _blackLabel2.text = @"绩点：";
        
        _blackLabel4 = [[JKWLabel alloc] init];
        [self addSubview:_blackLabel4];
        [_blackLabel4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kDeviceWidth * 38 * 2.75 / 750.0);
            make.height.mas_equalTo(kDeviceHeight * 25 / 1334.0);
            make.top.equalTo(weakSelf.blackLabel3).offset(kDeviceHeight * (24 + 25) / 1334.0);
            make.left.equalTo(weakSelf).offset(kDeviceWidth * 498 / 750.0);
        }];
        _blackLabel4.text = @"校院考：";
        
        _greyLabel1 = [[JKWLabel alloc] init];
        [self addSubview:_greyLabel1];
        [_greyLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kDeviceWidth * 38 * 4 / 750.0);
            make.height.mas_equalTo(kDeviceHeight * 25 / 1334.0);
            make.top.equalTo(weakSelf.titleLabel).offset(kDeviceHeight * (24 + 25) / 1334.0);
            make.left.equalTo(weakSelf.blackLabel1.mas_right).offset(0);
        }];
        _greyLabel1.textColor = [UIColor colorWithRed:0.70f green:0.70f blue:0.70f alpha:1.00f];
        _greyLabel1.text = @"JS100031";
        
        _greyLabel2 = [[JKWLabel alloc] init];
        [self addSubview:_greyLabel2];
        [_greyLabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kDeviceWidth * 38 * 4 / 750.0);
            make.height.mas_equalTo(kDeviceHeight * 25 / 1334.0);
            make.top.equalTo(weakSelf.blackLabel1).offset(kDeviceHeight * (24 + 25) / 1334.0);
            make.left.equalTo(weakSelf.blackLabel2).offset(kDeviceWidth * (38 * 2.1) / 750.0);
        }];
        _greyLabel2.textColor = [UIColor colorWithRed:0.70f green:0.70f blue:0.70f alpha:1.00f];
        _greyLabel2.text = @"3.0-0.0";
        
        _greyLabel3 = [[JKWLabel alloc] init];
        [self addSubview:_greyLabel3];
        [_greyLabel3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kDeviceWidth * 38 * 4 / 750.0);
            make.height.mas_equalTo(kDeviceHeight * 25 / 1334.0);
            make.top.equalTo(weakSelf.titleLabel).offset(kDeviceHeight * (24 + 25) / 1334.0);
            make.left.equalTo(weakSelf.blackLabel3).offset(kDeviceWidth * (38 * 2.1) / 750.0);
        }];
        _greyLabel3.textColor = [UIColor colorWithRed:0.70f green:0.70f blue:0.70f alpha:1.00f];
        _greyLabel3.text = @"3.0";
        
        _greyLabel4 = [[JKWLabel alloc] init];
        [self addSubview:_greyLabel4];
        [_greyLabel4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kDeviceWidth * 38 * 4 / 750.0);
            make.height.mas_equalTo(kDeviceHeight * 25 / 1334.0);
            make.top.equalTo(weakSelf.blackLabel3).offset(kDeviceHeight * (24 + 25) / 1334.0);
            make.left.equalTo(weakSelf.blackLabel4).offset(kDeviceWidth * (38 * 2.75) / 750.0);
        }];
        _greyLabel4.textColor = [UIColor colorWithRed:0.70f green:0.70f blue:0.70f alpha:1.00f];
        _greyLabel4.text = @"校考";
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
