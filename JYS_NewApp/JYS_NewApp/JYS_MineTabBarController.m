//
//  JYS_MineTabBarController.m
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/20.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

#import "JYS_MineTabBarController.h"

#import "JYS_SetTabBar.h"
#import <objc/runtime.h>

NSUInteger JYSTabbarItemsCount = 0;

@interface UIViewController (JYSTabBarControllerItemInternal)

- (void)jys_setTabBarController:(JYS_MineTabBarController *)tabBarController;

@end

@interface JYS_MineTabBarController ()

@end
@implementation JYS_MineTabBarController
@synthesize viewControllers = _viewControllers;

#pragma mark -
#pragma mark - Life Cycle

-(void)viewDidLoad{
    [super viewDidLoad];
    [self setUpTabBarItemTextAttributes];
    [self setUpTabBar];
    [[UITabBar appearance] setBackgroundImage:[self imageWithColor:[UIColor whiteColor]]];
}

#pragma mark -
#pragma mark - Private Methods

/**
 *  利用 KVC 把 系统的 tabBar 类型改为自定义类型。
 */
- (void)setUpTabBar {
    [self setValue:[[JYS_SetTabBar alloc] init] forKey:@"tabBar"];
}

- (void)setUpTabBarItemTextAttributes{
    
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
//    normalAttrs[NSForegroundColorAttributeName] = UIColorFromHex(0x666666);
    normalAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];

    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
//    selectedAttrs[NSForegroundColorAttributeName] = UIColorFromHex(0xff4800);
    selectedAttrs[NSForegroundColorAttributeName] = self.view.tintColor;

    UITabBarItem *tabBarItem = [UITabBarItem appearance];
    [tabBarItem setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
}

- (void)setViewControllers:(NSArray *)viewControllers {
    if (_viewControllers && _viewControllers.count) {
        for (UIViewController *viewController in _viewControllers) {
            [viewController willMoveToParentViewController:nil];
            [viewController.view removeFromSuperview];
            [viewController removeFromParentViewController];
        }
    }
    
    if (viewControllers && [viewControllers isKindOfClass:[NSArray class]]) {
        _viewControllers = [viewControllers copy];
        if (_tabBarItemsAttributes) {
            if (_tabBarItemsAttributes.count != _viewControllers.count) {
                [NSException raise:@"CYLTabBarController" format:@"The count of CYLTabBarControllers is not equal to the count of tabBarItemsAttributes.【中文】设置_tabBarItemsAttributes属性时，请确保元素个数与控制器的个数相同，并在方法`-setViewControllers:`之前设置"];
            }
        }
        JYSTabbarItemsCount = [viewControllers count];
        NSUInteger idx = 0;
        for (UIViewController *viewController in viewControllers) {
            [self addOneChildViewController:viewController
                                  WithTitle:_tabBarItemsAttributes[idx][JYSTabBarItemTitle]
                            normalImageName:_tabBarItemsAttributes[idx][JYSTabBarItemImage]
                          selectedImageName:_tabBarItemsAttributes[idx][JYSTabBarItemSelectedImage]];
            [viewController jys_setTabBarController:self];
            idx++;
        }
    } else {
        for (UIViewController *viewController in _viewControllers) {
            [viewController jys_setTabBarController:nil];
        }
        _viewControllers = nil;
    }
}

- (void)addOneChildViewController:(UIViewController *)viewController
                        WithTitle:(NSString *)title
                  normalImageName:(NSString *)normalImageName
                selectedImageName:(NSString *)selectedImageName
{
    
    viewController.tabBarItem.title = title;
    
    UIImage *normalImage = [UIImage imageNamed:normalImageName];
    normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    viewController.tabBarItem.image = normalImage;
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = selectedImage;
    [self addChildViewController:viewController];
}

- (UIImage *)imageWithColor:(UIColor *)color
{
    NSParameterAssert(color != nil);
    
    CGRect rect = CGRectMake(0, 0, 1, 1);
    // Create a 1 by 1 pixel context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);   // Fill it with your color
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end

#pragma mark - UIViewController+JYSTabBarControllerItem

@implementation UIViewController (JYSTabBarControllerItemInternal)

- (void)jys_setTabBarController:(JYS_MineTabBarController *)tabBarController
{
    objc_setAssociatedObject(self, @selector(jys_tabBarController), tabBarController, OBJC_ASSOCIATION_ASSIGN);
}

@end

@implementation UIViewController (JYS_MineTabBarController)

- (JYS_MineTabBarController *)jys_tabBarController
{
    JYS_MineTabBarController *tabBarController = objc_getAssociatedObject(self, @selector(jys_tabBarController));
    
    if (!tabBarController && self.parentViewController)
    {
        tabBarController = [self.parentViewController jys_tabBarController];
    }
    
    return tabBarController;
}

@end
