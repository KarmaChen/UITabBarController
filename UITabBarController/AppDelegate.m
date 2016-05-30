//
//  AppDelegate.m
//  UITabBarController
//
//  Created by Karma on 16/5/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //创建程序窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];//利用设备内部屏幕的bounds来创建window
    //创建UITabBarController
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    //创建UIViewController对象
    UIViewController *firstController = [[UIViewController alloc] init];
    firstController.view.backgroundColor = [UIColor redColor];
    //设置它的Item
    UITabBarItem *firstItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:0];
    firstController.tabBarItem = firstItem;
    
    UIViewController *secondController = [[UIViewController alloc] init];
    secondController.view.backgroundColor = [UIColor greenColor];
    UITabBarItem *secondItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1];
    secondController.tabBarItem = secondItem;
    
    UIViewController *thirdController = [[UIViewController alloc] init];
    thirdController.view.backgroundColor = [UIColor grayColor];
    UITabBarItem *thirdItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:2];
    thirdController.tabBarItem = thirdItem;
    //设置UIViewController的viewController属性
    tabBarController.viewControllers = @[firstController,secondController,thirdController];//有几个添加几个
    //设置窗口的根控制器
    self.window.rootViewController = tabBarController;
    //设置window为主窗口并显示
    [self.window makeKeyAndVisible];
    return YES;
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
