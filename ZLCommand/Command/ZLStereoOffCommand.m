//
//  ZLStereoOffCommand.m
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLStereoOffCommand.h"

@interface ZLStereoOffCommand ()

@property (nonatomic, strong) ZLStereo *stereo;

@end

@implementation ZLStereoOffCommand

- (instancetype)initWithStereo:(ZLStereo *)stereo {
    if (self = [super init]) {
        _stereo = stereo;
    }
    return self;
}

- (void)execute {
    [self.stereo off];
}

- (void)undo {
    [self.stereo on];
}

@end
