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
    UIBarButtonItem *rightBarItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"add"] style:UIBarButtonItemStylePlain target:self action:@selector(helpPage)];
    
    self.navigationItem.rightBarButtonItem = rightBarItem;

    UIBarButtonItem *eftBarItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"card@1x"] style:UIBarButtonItemStylePlain target:self action:@selector(helpPage)];
    
    self.navigationItem.leftBarButtonItem = eftBarItem;


}



@end
