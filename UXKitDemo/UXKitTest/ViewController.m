//
//  ViewController.m
//  UXKitTest
//
//  Created by Xiaoxuan Tang on 16/4/29.
//  Copyright © 2016年 GiftTalk. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@implementation ViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    UXLabel* label = [UXLabel new];
    label.text = @"Hello, UXKit";
    [self.view addSubview:label];
    [label sizeToFit];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
}

@end
