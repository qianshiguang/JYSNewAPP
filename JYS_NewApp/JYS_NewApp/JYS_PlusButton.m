//
//  JYS_PlusButton.m
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/20.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

#import "JYS_PlusButton.h"
#import "JYS_MineTabBarController.h"

//@implementation JYS_PlusButton

UIButton <JYS_PlusButtonSubclassing> *JYSExternPushlishButton = nil;
@interface JYS_PlusButton ()<UIActionSheetDelegate>

@end

@implementation JYS_PlusButton

#pragma mark -
#pragma mark - Private Methods

+ (void)registerSubclass {
    if ([self conformsToProtocol:@protocol(JYS_PlusButtonSubclassing)]) {
        Class<JYS_PlusButtonSubclassing> class = self;
        JYSExternPushlishButton = [class plusButton];
    }
}

@end
