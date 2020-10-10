//
//  ZLCeilingFanOffCommand.m
//  ZLCommand
//
//  Created by DingTalk on 2020/10/10.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLCeilingFanOffCommand.h"


@interface ZLCeilingFanOffCommand ()

@property (nonatomic, strong) ZLCeilingFan *ceilingFan;
@property (nonatomic, assign) ZLCeilingFanSpeed prevSpeed;

@end

@implementation ZLCeilingFanOffCommand


- (instancetype)initWithCellingFan:(id)ceilingFan {
    if (self = [super init]) {
        _ceilingFan = ceilingFan;
    }
    return self;
}

- (void)execute {
    self.prevSpeed = [self.ceilingFan getSpeed];   //在改变吊扇速度之前，记录当前速度
    [self.ceilingFan off];
}

- (void)undo {
    if (self.prevSpeed == ZLCeilingFanSpeedHigh) {
        [self.ceilingFan high];
    } else if (self.prevSpeed == ZLCeilingFanSpeedMedium) {
        [self.ceilingFan medium];
    } else if (self.prevSpeed == ZLCeilingFanSpeedLow) {
        [self.ceilingFan low];
    } else if (self.prevSpeed == ZLCeilingFanSpeedOFF) {
        [self.ceilingFan off];
    }
}

@end
