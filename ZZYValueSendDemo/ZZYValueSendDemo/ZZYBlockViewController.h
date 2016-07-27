//
//  ZZYBlockViewController.h
//  ZZYValueSendDemo
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ZZYMySecBlock) (NSString * string , UIColor * color);

typedef void(^ZZYMyThrBlock) (NSString * string , UIColor * color);


@interface ZZYBlockViewController : UIViewController

@property (nonatomic, copy) void(^ZZYMyBlock) (NSString * string , UIColor * color);

@property (nonatomic, copy) ZZYMySecBlock mySecondBlock;

- (void)returnTextBlock:(ZZYMySecBlock)block;

@property (nonatomic, copy) ZZYMyThrBlock myThrBlock;

@end
