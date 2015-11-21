//
//  JYS_FriendsDeviceViewController.m
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/20.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

#import "JYS_FriendsDeviceViewController.h"

@interface JYS_FriendsDeviceViewController ()

@end

@implementation JYS_FriendsDeviceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"logo_ios7"]];
    self.view.backgroundColor = [UIColor whiteColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
