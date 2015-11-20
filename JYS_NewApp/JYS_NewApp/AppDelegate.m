//
//  AppDelegate.m
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/20.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

#import "AppDelegate.h"
#import "JYS_MyDeviceViewController.h"
#import "JYS_FriendsDeviceViewController.h"
#import "JYS_TimePhotosViewController.h"
#import "JYS_SmartHomeViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]init];
    [self setTabbarViewController];
    [self.window setRootViewController:self.myTabbar];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)setTabbarViewController
{
    JYS_MyDeviceViewController *MyDeviceVC = [[JYS_MyDeviceViewController alloc] init];
    JYS_CustomNavigationController *MyDeviceVCNav = [[JYS_CustomNavigationController alloc] initWithRootViewController:MyDeviceVC];
    
    JYS_FriendsDeviceViewController *FriendsDevice = [[JYS_FriendsDeviceViewController alloc] init];
    JYS_CustomNavigationController *FriendsDeviceVCNav = [[JYS_CustomNavigationController alloc] initWithRootViewController:FriendsDevice];
    
    JYS_TimePhotosViewController *TimePhotosVC = [[JYS_TimePhotosViewController alloc] init];
    JYS_CustomNavigationController *TimePhotosVCNav = [[JYS_CustomNavigationController alloc] initWithRootViewController:TimePhotosVC];
    JYS_SmartHomeViewController *SmartHomeVC = [[JYS_SmartHomeViewController alloc] init];
    JYS_CustomNavigationController *SmartHomeVCNav = [[JYS_CustomNavigationController alloc] initWithRootViewController:SmartHomeVC];
    
    JYS_MineTabBarController *myTabbar = [[JYS_MineTabBarController alloc] init];
    [self customizeTabBarForController:myTabbar];
    [myTabbar setViewControllers:@[MyDeviceVCNav,
                                   FriendsDeviceVCNav,
                                   TimePhotosVCNav,
                                   SmartHomeVCNav
                                   ]];
    self.myTabbar = myTabbar;
}
- (void)customizeTabBarForController:(JYS_MineTabBarController *)tabBarController {
    
    NSDictionary *dict1 = @{
                            JYSTabBarItemTitle : @"我的设备",
                            JYSTabBarItemImage : @"TAB1",
                            JYSTabBarItemSelectedImage : @"TAB1_copy",
                            };
    NSDictionary *dict2 = @{
                            JYSTabBarItemTitle : @"好友设备",
                            JYSTabBarItemImage : @"TAB2",
                            JYSTabBarItemSelectedImage : @"TAB2_copy",
                            };
    NSDictionary *dict3 = @{
                            JYSTabBarItemTitle : @"时光相册",
                            JYSTabBarItemImage : @"TAB3",
                            JYSTabBarItemSelectedImage : @"TAB3_copy",
                            };
    NSDictionary *dict4 = @{
                            JYSTabBarItemTitle : @"智能看家",
                            JYSTabBarItemImage : @"TAB4",
                            JYSTabBarItemSelectedImage : @"TAB4_copy",
                            };
    NSArray *tabBarItemsAttributes = @[
                                       dict1,
                                       dict2,
                                       dict3,
                                       dict4
                                       ];
    tabBarController.tabBarItemsAttributes = tabBarItemsAttributes;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
