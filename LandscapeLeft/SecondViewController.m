//
//  SecondViewController.m
//  LandscapeLeft
//
//  Created by 林江锋 on 16/4/16.
//  Copyright © 2016年 Master_Lyn. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (readwrite, nonatomic, strong) UILabel * descLbl;
@property (readwrite, nonatomic, strong) UIButton * backBtn;

@end

@implementation SecondViewController

- (void)setAccessibilityNavigationStyle:(UIAccessibilityNavigationStyle)accessibilityNavigationStyle {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CGRect frame = self.view.frame;
    CGFloat width = CGRectGetWidth(frame);
    CGFloat height = CGRectGetHeight(frame);
    CGFloat btnWidth = 160;
    CGFloat btnHeight = 30;
    
    
    _descLbl = [UILabel new];
    [_descLbl setFrame:CGRectMake((width-btnWidth)/2, (height-btnHeight)/2, btnWidth, btnHeight)];
    _descLbl.text = @"此为第二级controller";
    
    _backBtn = [UIButton new];
    [_backBtn setFrame:CGRectMake((width-btnWidth)/2, (height-btnHeight)/2-btnHeight*2, btnWidth, btnHeight)];
    [_backBtn setTitle:@"Back" forState:UIControlStateNormal];
    [_backBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_backBtn addTarget:self action:@selector(dismissModalViewControllerAnimated:) forControlEvents:UIControlEventTouchUpInside];
    

    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_descLbl];
    [self.view addSubview:_backBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 在你需要横屏的controller中重写下面三个方法
- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask) supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeLeft;
}



@end
