//
//  ZZYRootViewController.m
//  ZZYValueSendDemo
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import "ZZYRootViewController.h"
#import "ZZYAppDellegateViewController.h"
#import "ZZYDelegateViewController.h"
#import "ZZYVCViewController.h"
#import "ZZYNotiViewController.h"
#import "ZZYBlockViewController.h"
#import "AppDelegate.h"

@interface ZZYRootViewController ()<ZZYDelegateViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *appBtn;

@property (weak, nonatomic) IBOutlet UIButton *delegateBtn;


@property (weak, nonatomic) IBOutlet UIButton *notiBtn;

@property (weak, nonatomic) IBOutlet UIButton *blockBtn;



@end

@implementation ZZYRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"展示界面";
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(setNoti:) name:@"ZZYNotiSendValue" object:nil];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    AppDelegate * app = [UIApplication sharedApplication].delegate;
    
    if (app.string) {
        [self.appBtn setTitle:app.string forState:UIControlStateNormal];
        [self.appBtn setBackgroundColor:app.color];
    }
    
}

- (void)setNoti:(NSNotification *)noti
{
    
    [self.notiBtn setTitle:noti.userInfo[@"value"] forState:UIControlStateNormal];
    [self.notiBtn setBackgroundColor:noti.userInfo[@"color"]];
    
}

- (IBAction)pressAppVc:(id)sender {
    ZZYAppDellegateViewController * vc = [[ZZYAppDellegateViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)pressDelegateVc:(id)sender {
    ZZYDelegateViewController * vc = [[ZZYDelegateViewController alloc]init];
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)pressVc:(id)sender {
    ZZYVCViewController * vc = [[ZZYVCViewController alloc]init];
    vc.rootVc = self;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)delegateViewControllerDidClickwithString:(NSString *)string color:(UIColor *)color
{
    [self.delegateBtn setTitle:string forState:UIControlStateNormal];
    [self.delegateBtn setBackgroundColor:color];
}

- (IBAction)pressnotivc:(id)sender {
    ZZYNotiViewController * vc = [[ZZYNotiViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)pressblockVc:(id)sender {
    ZZYBlockViewController * vc = [[ZZYBlockViewController alloc]init];
    [vc setZZYMyBlock:^(NSString * string, UIColor * color) {
        
        [self.blockBtn setTitle:string forState:UIControlStateNormal];
        [self.blockBtn setBackgroundColor:color];
        
    }];
    
    [vc returnTextBlock:^(NSString *string, UIColor *color) {
        [self.blockBtn setTitle:string forState:UIControlStateNormal];
        [self.blockBtn setBackgroundColor:color];

    }];
    
    vc.myThrBlock = ^(NSString * string, UIColor * color){
        [self.blockBtn setTitle:string forState:UIControlStateNormal];
        [self.blockBtn setBackgroundColor:color];

    };
    
    [self.navigationController pushViewController:vc animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
