//
//  ZZYBlockViewController.m
//  ZZYValueSendDemo
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import "ZZYBlockViewController.h"

@interface ZZYBlockViewController ()

@property (nonatomic, weak) UITextField * field;

@end

@implementation ZZYBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"Block传值";
    
    UITextField * field = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 40)];
    field.borderStyle = UITextBorderStyleRoundedRect;
    field.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:field];
    self.field = field;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.ZZYMyBlock) {
        self.ZZYMyBlock(self.field.text,[UIColor lightGrayColor]);
    }
    
    if (self.mySecondBlock) {
        self.mySecondBlock(self.field.text,[UIColor lightGrayColor]);
    }
    
    if (self.myThrBlock) {
        self.myThrBlock(self.field.text,[UIColor lightGrayColor]);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)returnTextBlock:(ZZYMySecBlock)block
{
    self.mySecondBlock = block;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
