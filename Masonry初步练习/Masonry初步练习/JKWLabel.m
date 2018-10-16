//
//  JKWLabel.m
//  Masonry初步练习
//
//  Created by mac on 2018/10/15.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "JKWLabel.h"

@implementation JKWLabel

- (instancetype) init {
    self = [super init];
    if (self) {
        self.font = [UIFont systemFontOfSize:14];
        self.textColor = [UIColor blackColor];
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
