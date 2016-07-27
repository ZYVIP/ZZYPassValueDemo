//
//  ZZYDelegateViewController.m
//  ZZYValueSendDemo
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import "ZZYDelegateViewController.h"

@interface ZZYDelegateViewController ()

@property (nonatomic, weak) UITextField * field;

@end

@implementation ZZYDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.title = @"代理传值";
    
    UITextField * field = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 40)];
    field.borderStyle = UITextBorderStyleRoundedRect;
    field.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:field];
    self.field = field;
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if ([self.delegate respondsToSelector:@selector(delegateViewControllerDidClickwithString:color:)]) {
        [self.delegate delegateViewControllerDidClickwithString:self.field.text color:[UIColor greenColor]];
    }
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
