//
//  ZLStereo.m
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLStereo.h"

@implementation ZLStereo

- (void)on {
    NSLog(@"Stereo is on");
}

- (void)off {
    NSLog(@"Stereo is off");
}

- (void)setCD {
    NSLog(@"Stereo set CD pattern");
}

- (void)setVolume:(NSUInteger)volume {
    NSLog(@"Stereo set volume:%lu", volume);
}

@end
