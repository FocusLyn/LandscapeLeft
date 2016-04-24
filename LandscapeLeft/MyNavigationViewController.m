//
//  MyNavigationViewController.m
//  LandscapeLeft
//
//  Created by 林江锋 on 16/4/16.
//  Copyright © 2016年 Master_Lyn. All rights reserved.
//

#import "MyNavigationViewController.h"

@interface MyNavigationViewController ()

@end

@implementation MyNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate {
    return YES;
}

//- (NSUInteger)supportedInterfaceOrientations {
//    return [self.viewControllers.lastObject supportedInterfaceOrientations];
//}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.viewControllers.lastObject supportedInterfaceOrientations];
}


- (UIInterfaceOrientation) preferredInterfaceOrientationForPresentation {
    return [self.viewControllers.lastObject
            preferredInterfaceOrientationForPresentation];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
