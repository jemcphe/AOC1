//
//  AppDelegate.m
//  AOC1
//
//  Created by James McPherson on 8/28/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    /*  James E. McPherson III
        AOC1: Project 1
        TERM: 1209
        08/29/2012
    */
    
    //Project Work Flow Begins Here
    //Declare Variables
    int passAttempts = 10;
    int completions = 3;
    float accuracy = (completions / passAttempts) * 100;
    float health = 100.00;
    float stamina = 95.00;
    BOOL isStarter = YES;
    
    // Initiate Story
    NSLog(@"James is a quarterback and is about to begin a throwing practice session.");
    
    // single for loop that iterates through pass attempts
    for (int passes = 1; passes<=passAttempts; passes++) {
        NSLog(@"James throws pass attempt number %d", passes);
    }
    
    // AND, OR comparison... float, int and BOOL types used
    if ((completions>= 5 && health >= 90) || (isStarter == YES)){
        NSLog(@"James has been looking good in practice.  He will be our Starter for the season opener!");
    } else if (completions>= 4 && stamina>= 95){
        NSLog(@"James wasn't as accurate this week, but his endurance is legendary.  He will start the season opener!");
    } else {
        NSLog(@"Sorry James, you aren't quite ready to start for us");
    }
    
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
