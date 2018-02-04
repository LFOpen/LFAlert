//
//  ExampleViewController.m
//  LFAlert
//
//  Created by archerLj on 2018/2/4.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import "ExampleViewController.h"
#import "LFAlert.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *click = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 50)];
    [click addTarget:self action:@selector(showAlert) forControlEvents:UIControlEventTouchUpInside];
    [click setTitle:@"显示Alert" forState:UIControlStateNormal];
    [click setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:click];
}

-(void)showAlert {
    [[LFAlert shared] showAlertWithTitle:@"温馨提示" message:@"有新的版本更新了，去更新吧！" cancelTitle:@"取消" cancelAction:nil okTitle:@"去更新" okAction:^{
        NSLog(@"去更新");
    } inController:self];
}

@end
