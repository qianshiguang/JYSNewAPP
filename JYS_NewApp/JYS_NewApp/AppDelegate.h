//
//  AppDelegate.h
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/20.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JYS_MineTabBarController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) JYS_MineTabBarController *myTabbar;
@property (nonatomic, assign) int tabbarIndex;
@end
