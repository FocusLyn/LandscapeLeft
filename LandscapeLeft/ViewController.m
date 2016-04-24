//
//  ViewController.m
//  LandscapeLeft
//
//  Created by 林江锋 on 16/4/16.
//  Copyright © 2016年 Master_Lyn. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton * pushBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame = self.view.frame;
    CGFloat width = CGRectGetWidth(frame);
    CGFloat height = CGRectGetHeight(frame);
    CGFloat btnWidth = 160;
    CGFloat btnHeight = 30;
    
    _pushBtn = [[UIButton alloc] init];
    _pushBtn.layer.borderWidth = 1/[UIScreen mainScreen].scale;
    _pushBtn.layer.borderColor = [UIColor redColor].CGColor;
    _pushBtn.layer.cornerRadius = 3;
    [_pushBtn setTitle:@"跳转二级controller" forState:UIControlStateNormal];
    [_pushBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_pushBtn addTarget:self action:@selector(gotoSecondVC) forControlEvents:UIControlEventTouchUpInside];
    [_pushBtn setFrame:CGRectMake((width-btnWidth)/2, (height-btnHeight)/2, btnWidth, btnHeight)];
    
    
    [self.view addSubview:_pushBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) gotoSecondVC {
    NSLog(@"跳转到二级页面");
    SecondViewController * VC = [[SecondViewController alloc] init];
//    [self.navigationController pushViewController:VC animated:YES];
    [self presentViewController:VC animated:YES completion:nil];  //此处需要注意的是不能用push方法，只能用present来展示
}


@end
