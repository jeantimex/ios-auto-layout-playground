//
//  ViewController.m
//  Auto Layout Playground
//
//  Created by Yong Su on 3/17/19.
//  Copyright © 2019 Yong Su. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _easyContainerView = [[UIView alloc] init];
    _easyContainerView.backgroundColor = [UIColor redColor];
    _easyContainerView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_easyContainerView];
    
    UILayoutGuide * guide = self.view.safeAreaLayoutGuide;
    [_easyContainerView.leadingAnchor constraintEqualToAnchor:guide.leadingAnchor].active = YES;
    [_easyContainerView.trailingAnchor constraintEqualToAnchor:guide.trailingAnchor].active = YES;
    [_easyContainerView.topAnchor constraintEqualToAnchor:guide.topAnchor].active = YES;
    [_easyContainerView.bottomAnchor constraintEqualToAnchor:guide.bottomAnchor].active = YES;
}

@end
