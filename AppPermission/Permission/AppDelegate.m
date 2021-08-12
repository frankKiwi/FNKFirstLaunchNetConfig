//
//  AppDelegate.m
//  Permission
//
//  Created by LWW on 2021/8/11.
//

#import "AppDelegate.h"
#import "FirstLaunchManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[FirstLaunchManager Handler] LaunchApplicationBlock:^{
        NSLog(@"初始化");
        [self initNet];
    }];
    
    return YES;
}
/***
 
 在这里调用初始化接口,完成接口初始化记得要 调用[FirstLaunchManager finishLaunch]
 因为是监听网络变化,当网络可用的时候会进行一次调用.多次初始化对APP不好.
 如果有特殊需求可以调用[FirstLaunchManager restLaunch]重置初始化,app每次进入会重置一次.
 
 */

- (void)initNet{
    BOOL finishLaunch = YES;
    if (finishLaunch) {
        [FirstLaunchManager finishLaunch];
    }
    
}

#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
