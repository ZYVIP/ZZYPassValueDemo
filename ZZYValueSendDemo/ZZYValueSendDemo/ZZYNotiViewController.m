//
//  ZZYNotiViewController.m
//  ZZYValueSendDemo
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import "ZZYNotiViewController.h"

@interface ZZYNotiViewController ()

@property (nonatomic, weak) UITextField * field;

@end

@implementation ZZYNotiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"通知传值";
    
    UITextField * field = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 40)];
    field.borderStyle = UITextBorderStyleRoundedRect;
    field.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:field];
    self.field = field;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
 
    [[NSNotificationCenter defaultCenter]postNotificationName:@"ZZYNotiSendValue" object:nil userInfo:@{@"value":self.field.text,@"color":[UIColor redColor]}];

    [self.navigationController popViewControllerAnimated:YES];
}

@end
