//
//  ZLStereoOnCommand.m
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLStereoOnCommand.h"

@interface ZLStereoOnCommand ()

@property (nonatomic, strong) ZLStereo *stereo;

@end

@implementation ZLStereoOnCommand

- (instancetype)initWithStereo:(ZLStereo *)stereo {
    if (self = [super init]) {
        _stereo = stereo;
    }
    return self;
}

- (void)execute {
    [self.stereo on];
    [self.stereo setCD];
    [self.stereo setVolume:11];
}

- (void)undo {
    [self.stereo off];
}

@end
