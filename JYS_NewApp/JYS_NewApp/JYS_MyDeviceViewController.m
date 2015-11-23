//
//  JYS_MyDeviceViewController.m
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/20.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

#import "JYS_MyDeviceViewController.h"
#import "JYS_DeviceInfoTableViewCell.h"

@interface JYS_MyDeviceViewController ()

@end

@implementation JYS_MyDeviceViewController
@synthesize myTableView;
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initNavgationBar];
    self.automaticallyAdjustsScrollViewInsets = NO;

    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kMainScreenWidth, kMainScreenHeight-63-50) style:UITableViewStylePlain];
    myTableView.dataSource = self;
    myTableView.delegate = self;
    [self.view addSubview:myTableView];
}
- (void)initNavgationBar
{
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"logo_ios7"]];
    UIBarButtonItem *rightBarItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"add"] style:UIBarButtonItemStylePlain target:self action:@selector(helpPage:)];
    rightBarItem.tintColor = self.view.tintColor ;
    rightBarItem.tag = 1;
    self.navigationItem.rightBarButtonItem = rightBarItem;
    
    UIBarButtonItem *eftBarItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"card"] style:UIBarButtonItemStylePlain target:self action:@selector(helpPage:)];
    eftBarItem.tintColor = self.view.tintColor ;
    eftBarItem.tag = 0;
    
    self.navigationItem.leftBarButtonItem = eftBarItem;

//    UIView *rightNavItemView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 56, 44)];
//    UILabel *rightNavItemLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, 56, 20)];
//    rightNavItemLab.font = [UIFont systemFontOfSize:14];
//    rightNavItemLab.textColor = UIColorFromHex(0xff4800);
//    rightNavItemLab.textAlignment = NSTextAlignmentCenter;
//    rightNavItemLab.text = @"添加";
//    [rightNavItemView addSubview:rightNavItemLab];
//    UIButton *rightNavItemBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    rightNavItemBtn.frame = CGRectMake(0, 5, 56, 34);
//    [rightNavItemBtn addTarget:self action:@selector(rightNavItemBtnClicked) forControlEvents:UIControlEventTouchUpInside];
//    [rightNavItemView addSubview:rightNavItemBtn];
//    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightNavItemView];
//    self.navigationItem.rightBarButtonItem = rightItem;
    //    [self.navigationController.tabBarItem setBadgeValue:@"3"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 96;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIntentifier = @"CellIntentifier";
    JYS_DeviceInfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIntentifier];
    if (cell==nil)
    {
        cell = [[JYS_DeviceInfoTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIntentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    if (indexPath.row%2==0)
    {
        cell.louPanImgView.image = [UIImage imageNamed:@"2.jpg"];
    }
    else
    {
        cell.louPanImgView.image = [UIImage imageNamed:@"3.jpg"];
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    HouseDetailViewController *houseDetailVC = [[HouseDetailViewController alloc] init];
//    houseDetailVC.hidesBottomBarWhenPushed = YES;
//    [self.navigationController pushViewController:houseDetailVC animated:YES];
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
