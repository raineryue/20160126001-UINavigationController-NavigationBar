//
//  OneViewController.m
//  20160126001-UINavigationController-NavigationBar
//
//  Created by Rainer on 16/1/26.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 标题
    self.navigationItem.title = @"第一个控制器";
    
    // 返回按钮
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backButtonClickAction:)];
    
    // 左边按钮（系统按钮）
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    
    // 右边按钮（系统按钮）
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:nil];
}

- (IBAction)sendButtonClickAction:(id)sender {
    TwoViewController *twoViewController = [[TwoViewController alloc] init];
    [self.navigationController pushViewController:twoViewController animated:YES];
}

- (void)backButtonClickAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
