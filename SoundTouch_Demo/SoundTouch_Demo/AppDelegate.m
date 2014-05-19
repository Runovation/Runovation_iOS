//
//  AppDelegate.m
//  SoundTouch_Demo
//
//  Created by timaramac on 5/11/14.
//  Copyright (c) 2014 Runovation. All rights reserved.
//

#import "AppDelegate.h"
#import <AVFoundation/AVAudioPlayer.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    NSString *path = [[NSBundle mainBundle] pathForResource:@"song" ofType:@"wav"];
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    AVAudioPlayer *player =[[AVAudioPlayer alloc] initWithData:data error:NULL];
    
    player.volume = 1.0;    // optional to play music
    
    player.delegate = self;
    
    [player prepareToPlay]; // optional to play music
    [player play];          // optional to play music
    
    NSUInteger len = [player.data length];
    
    soundtouch::SAMPLETYPE sampleBuffer[len];
    
    [player.data getBytes:sampleBuffer length:len];
    
    soundtouch::BPMDetect BPM(player.numberOfChannels, [[player.settings valueForKey:@"AVSampleRateKey"] longValue]);
    
    BPM.inputSamples(sampleBuffer, len/player.numberOfChannels);
    
    NSLog(@"Beats Per Minute = %f", BPM.getBpm());
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
