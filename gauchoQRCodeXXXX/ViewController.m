//
//  ViewController.m
//  gauchoQRCodeXXXX
//
//  Created by gaucho on 2018/6/27.
//  Copyright © 2018年 gaucho. All rights reserved.
//

#import "ViewController.h"
#import "HWQRCodeViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *centerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    centerBtn.frame = CGRectMake(0, 0, 100, 40);
    centerBtn.backgroundColor = [UIColor redColor];
    [centerBtn setTitle:@"扫描" forState:UIControlStateNormal];
    [centerBtn addTarget:self action:@selector(scanQrcode) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:centerBtn];
    
    centerBtn.center = self.view.center;
}

-(void)scanQrcode{
    [self.navigationController pushViewController:[HWQRCodeViewController new] animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
