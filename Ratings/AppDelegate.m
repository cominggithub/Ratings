//
//  AppDelegate.m
//  Ratings
//
//  Created by Coming on 12/12/5.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import "AppDelegate.h"
#import "Player.h"
#import "PlayerViewController.h"

@implementation AppDelegate
{
    NSMutableArray *players;
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    int i;
    int count = 500;
    // Override point for customization after application launch.
    players = [NSMutableArray arrayWithCapacity:count];
    
    for(i=0; i<count; i+=3)
    {
        Player *player = [[Player alloc] init];
        player.name = @"李大仁";
        player.game = @"我可能不會愛你";
        player.rating = 4;
        [players addObject:player];
    
        player = [[Player alloc] init];
        player.name = @"伍佰";
        player.game = @"真世界";
        player.rating = 5;
        [players addObject:player];
    
        player = [[Player alloc] init];
        player.name = @"吳念真";
        player.game = @"多桑";
        player.rating = 3;
        [players addObject:player];
    }
    UITabBarController *tabBarController = (UITabBarController*) self.window.rootViewController;
    
    UINavigationController *navigationController =
    [[tabBarController viewControllers] objectAtIndex:3];
    
    PlayerViewController *playerViewController =
    [[navigationController viewControllers] objectAtIndex:0];
    
    playerViewController.players = players;
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



@end
