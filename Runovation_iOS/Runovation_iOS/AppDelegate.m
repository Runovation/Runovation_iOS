//
//  AppDelegate.m
//  Runovation_iOS
//
//  Created by timaramac on 5/6/14.
//  Copyright (c) 2014 runovationfitness. All rights reserved.
//

#import "AppDelegate.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
//    //Create an instance of MPMusicPlayerController
//    
//    MPMusicPlayerController* myPlayer = [MPMusicPlayerController iPodMusicPlayer];
//    
//    
//    
//    //Create a query that will return all songs by The Beatles grouped by album
//    
//    MPMediaQuery* query = [MPMediaQuery songsQuery];
//    
//    [query addFilterPredicate:[MPMediaPropertyPredicate predicateWithValue:@"The Beatles" forProperty:MPMediaItemPropertyArtist comparisonType:MPMediaPredicateComparisonEqualTo]];
//    
//    [query setGroupingType:MPMediaGroupingAlbum];
//    
//    
//    
//    //Pass the query to the player
//    
//    [myPlayer setQueueWithQuery:query];
//    
//    
//    
//    //Start playing and set a label text to the name and image to the cover art of the song that is playing
//    
//    [myPlayer play];
//    
//    //someLabel.text = [myPlayer.nowPlayingItem valueForProperty:MPMediaItemPropertyTitle];
//    
//    //someImageView.image = [myPlayer.nowPlayingItem valueForProperty:MPMediaItemPropertyArtwork];
    
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
