//
//  JYS_MineTabBarController.h
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/20.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

@import Foundation;

static NSString *const JYSTabBarItemTitle= @"tabBarItemTitle";
static NSString *const JYSTabBarItemImage= @"tabBarItemImage";
static NSString *const JYSTabBarItemSelectedImage= @"tabBarItemSelectedImage";

extern NSUInteger JYSTabbarItemsCount;

#import <UIKit/UIKit.h>

@interface JYS_MineTabBarController : UITabBarController

/**
 * An array of the root view controllers displayed by the tab bar interface.
 */
@property (nonatomic, readwrite, copy) IBOutletCollection(UIViewController) NSArray *viewControllers;
/**
 * The Attributes of items which is displayed on the tab bar.
 */
@property (nonatomic, readwrite, copy) IBOutletCollection(NSDictionary) NSArray *tabBarItemsAttributes;

@end

@interface UIViewController (JYS_MineTabBarController)

/**
 * The nearest ancestor in the view controller hierarchy that is a tab bar controller. (read-only)
 */
@property(nonatomic, readonly) JYS_MineTabBarController *jys_tabBarController;

@end
