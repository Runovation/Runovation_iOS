//
//  PlaylistView.m
//  Runovation_iOS
//
//  Created by timaramac on 5/11/14.
//  Copyright (c) 2014 runovationfitness. All rights reserved.
//

#import "PlaylistView.h"

@implementation PlaylistView : UIView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)mediaPicker:(MPMediaPickerController *)mediaPicker didPickMediaItems:(MPMediaItemCollection *)mediaItemCollection
{
    MPMusicPlayerController *player = [MPMusicPlayerController iPodMusicPlayer];
    [player setQueueWithItemCollection:mediaItemCollection];
    [player play];
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
