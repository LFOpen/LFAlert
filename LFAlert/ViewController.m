//
//  ViewController.m
//  LFAlert
//
//  Created by archerLj on 2018/2/4.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import "ViewController.h"
#import "LFAlert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 1.
//    [[LFAlert shared] showAlertWithTitle:@"温馨提示" message:@"有新的版本更新了，去更新吧！" cancelTitle:@"取消" cancelAction:nil okTitle:@"去更新" okAction:^{
//        NSLog(@"去更新");
//    }];
    
    // 2.
//        [[LFAlert shared] showAlertWithTitle:@"温馨提示" message:@"有新版本" cancelTitle:nil cancelAction:nil okTitle:@"确定" okAction:^{
//            NSLog(@"确定");
//        }];
    
    // 3.
    //    [[LFAlert shared] showAlertWithTitle:@"温馨提示" message:@"有新版本更新了" cancelTitle:@"确定" cancelAction:nil okTitle:nil okAction:nil];
}

@end
