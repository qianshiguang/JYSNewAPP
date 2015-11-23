//
//  JYS_MyDeviceViewController.m
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/20.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

#import "JYS_MyDeviceViewController.h"

@interface JYS_MyDeviceViewController ()

@end

@implementation JYS_MyDeviceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"logo_ios7"]];
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *rightBarItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"add"] style:UIBarButtonItemStylePlain target:self action:@selector(helpPage:)];
    rightBarItem.tintColor = self.view.tintColor ;
    rightBarItem.tag = 1;
    self.navigationItem.rightBarButtonItem = rightBarItem;

    UIBarButtonItem *eftBarItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"card"] style:UIBarButtonItemStylePlain target:self action:@selector(helpPage:)];
    eftBarItem.tintColor = self.view.tintColor ;
    eftBarItem.tag = 0;

    self.navigationItem.leftBarButtonItem = eftBarItem;

}


- (void)helpPage:(UIBarButtonItem *)sender
{
    if (sender.tag == 0) {
        NSLog(@"更多");

    }else{
    
        NSLog(@"添加");

    }
}

@end
