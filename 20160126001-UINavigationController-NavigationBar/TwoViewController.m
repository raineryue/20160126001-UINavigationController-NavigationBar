//
//  TwoViewController.m
//  20160126001-UINavigationController-NavigationBar
//
//  Created by Rainer on 16/1/26.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // title标题
    self.navigationItem.title = @"第二个控制器";
    
    // 返回按钮
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backButtonClickAction:)];
    
    // 右边按钮（自定义导航栏按钮）
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"btn_back_normal"] forState:UIControlStateNormal];
    [leftButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(closeButtonClickAction:) forControlEvents:UIControlEventTouchUpInside];
    leftButton.frame = CGRectMake(0, 0, 46, 31);
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
}

- (IBAction)sendButtonClickAction:(id)sender {
    ThreeViewController *threeViewController = [[ThreeViewController alloc] init];
    [self.navigationController pushViewController:threeViewController animated:YES];
}

- (IBAction)backButtonClickAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)closeButtonClickAction:(UIButton *)button {
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
