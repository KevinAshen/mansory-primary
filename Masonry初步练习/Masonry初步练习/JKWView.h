//
//  JKWView.h
//  Masonry初步练习
//
//  Created by mac on 2018/10/15.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JKWLabel.h"

NS_ASSUME_NONNULL_BEGIN

@interface JKWView : UIView

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) JKWLabel *blackLabel1;
@property (nonatomic, strong) JKWLabel *blackLabel2;
@property (nonatomic, strong) JKWLabel *blackLabel3;
@property (nonatomic, strong) JKWLabel *blackLabel4;
@property (nonatomic, strong) JKWLabel *greyLabel1;
@property (nonatomic, strong) JKWLabel *greyLabel2;
@property (nonatomic, strong) JKWLabel *greyLabel3;
@property (nonatomic, strong) JKWLabel *greyLabel4;

@end

NS_ASSUME_NONNULL_END
