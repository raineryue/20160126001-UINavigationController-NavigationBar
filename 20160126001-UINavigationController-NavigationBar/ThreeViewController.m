//
//  ThreeViewController.m
//  20160126001-UINavigationController-NavigationBar
//
//  Created by Rainer on 16/1/26.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 导航标题
    NSString *titleString = @"第三个控制器";
    
    // 标题栏字体设置
    NSDictionary *fontDictionary = @{NSFontAttributeName: [UIFont systemFontOfSize:14]};
    
    // 获取导航标题的字体大小
    CGSize fontSize = [titleString sizeWithAttributes:fontDictionary];
    
    // 设置标题的标签
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = titleString;
    
    // 根据标题标签的标题文字或去文字的Frame
    CGRect fontFrame = [titleLabel.text boundingRectWithSize:fontSize options:NSStringDrawingUsesLineFragmentOrigin attributes:fontDictionary context:nil];
    
    // 将文字的frame赋值给标题标签
    titleLabel.frame = fontFrame;
    
    // 设置导航栏标题视图
    self.navigationItem.titleView = titleLabel;
    
    // 初始化返回按钮
    UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_back_normal"] style:UIBarButtonItemStylePlain target:self action:nil];
    
    // 初始化刷新按钮
    UIBarButtonItem *refreshBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:nil];

    // 设置导航栏右边按钮
    self.navigationItem.rightBarButtonItems = @[backBarButtonItem, refreshBarButtonItem];
}

- (IBAction)popButtonClickAction:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
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
