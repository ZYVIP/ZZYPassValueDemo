//
//  ZZYAppDellegateViewController.m
//  ZZYValueSendDemo
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import "ZZYAppDellegateViewController.h"
#import "AppDelegate.h"

@interface ZZYAppDellegateViewController ()

@property (nonatomic, weak) UITextField * field;

@end

@implementation ZZYAppDellegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"AppDelegate传值";
    
    UITextField * field = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 40)];
    field.borderStyle = UITextBorderStyleRoundedRect;
    field.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:field];
    self.field = field;

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //设置数据信息
    AppDelegate * app = [UIApplication sharedApplication].delegate;
    
    app.string = self.field.text;
    app.color = [UIColor orangeColor];
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
