//
//  ZZYVCViewController.m
//  ZZYValueSendDemo
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import "ZZYVCViewController.h"
#import "ZZYRootViewController.h"

@interface ZZYVCViewController ()

@property (nonatomic, weak) UITextField * field;

@end

@implementation ZZYVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"控制器传值";
    
    UITextField * field = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 40)];
    field.borderStyle = UITextBorderStyleRoundedRect;
    field.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:field];
    self.field = field;
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [self.rootVc.vcBtn setTitle:self.field.text forState:UIControlStateNormal];
    [self.rootVc.vcBtn setBackgroundColor:[UIColor orangeColor]];
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
