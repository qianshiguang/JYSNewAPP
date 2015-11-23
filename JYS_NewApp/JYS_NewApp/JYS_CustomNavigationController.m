//
//  JYS_CustomNavigationController.m
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/20.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

#import "JYS_CustomNavigationController.h"

@interface JYS_CustomNavigationController ()

@end

@implementation JYS_CustomNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        if(isIOS7){
            self.navigationBar.translucent = NO;
            [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
            [[UINavigationBar appearance] setBarTintColor:UIColorFromHex(0xf5f5f5)];
            [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
            
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        }else{
            [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navgationbar.png"] forBarMetrics:UIBarMetricsDefault];
        }
    }
    return self;
}

@end

