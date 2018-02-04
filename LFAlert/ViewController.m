//
//  ViewController.m
//  LFAlert
//
//  Created by archerLj on 2018/2/4.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import "ViewController.h"
#import "ExampleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *click = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 50)];
    [click addTarget:self action:@selector(showExampleVC) forControlEvents:UIControlEventTouchUpInside];
    [click setTitle:@"显示Example" forState:UIControlStateNormal];
    [click setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:click];
}

-(void)showExampleVC {
    ExampleViewController *exampleVC = [[ExampleViewController alloc] init];
    [self presentViewController:exampleVC animated:YES completion:nil];
}

@end
