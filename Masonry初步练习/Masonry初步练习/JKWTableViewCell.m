//
//  JKWTableViewCell.m
//  Masonry初步练习
//
//  Created by mac on 2018/10/15.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "JKWTableViewCell.h"
#import <Masonry.h>
#define kDeviceWidth [UIScreen mainScreen].bounds.size.width
#define kDeviceHeight [UIScreen mainScreen].bounds.size.height

@implementation JKWTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setUI];
    }
    return self;
}

- (void) setUI {
    //__weak typeof (self) weakSelf = self;
    __weak typeof (self) weakSelf = self;
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(weakSelf);
    }];
    _mainJKWView = [[JKWView alloc] init];
    [self.contentView addSubview:_mainJKWView];
    [self.mainJKWView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(weakSelf);
    make.top.bottom.left.and.right.equalTo(self).with.insets(UIEdgeInsetsMake(kDeviceHeight * 19 / 1334.0, kDeviceHeight * 19 / 1334.0, kDeviceWidth * 25 / 750.0, kDeviceWidth * 25 / 750.0));
    }];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
