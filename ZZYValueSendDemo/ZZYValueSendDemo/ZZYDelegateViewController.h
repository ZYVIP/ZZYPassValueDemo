//
//  ZZYDelegateViewController.h
//  ZZYValueSendDemo
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZZYDelegateViewControllerDelegate <NSObject>

@optional

- (void)delegateViewControllerDidClickwithString:(NSString *)string color:(UIColor *)color;

@end

@interface ZZYDelegateViewController : UIViewController

@property (nonatomic, assign) id<ZZYDelegateViewControllerDelegate> delegate;

@end
