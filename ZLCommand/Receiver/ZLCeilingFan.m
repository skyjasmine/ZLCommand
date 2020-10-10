//
//  ZLCellingFan.m
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLCeilingFan.h"

@implementation ZLCeilingFan

- (instancetype)init {
    if (self = [super init]) {
        _speed = ZLCeilingFanSpeedOFF;
    }
    return self;
}

- (void)high {
    self.speed = ZLCeilingFanSpeedHigh;
    NSLog(@"CeilingFan speed high");
}

- (void)medium {
    self.speed = ZLCeilingFanSpeedMedium;
    NSLog(@"CeilingFan speed medium");
}

- (void)low {
    self.speed = ZLCeilingFanSpeedLow;
    NSLog(@"CeilingFan speed low");
}

- (void)off {
    self.speed = ZLCeilingFanSpeedOFF;
    NSLog(@"CeilingFan speed off");
}

- (ZLCeilingFanSpeed)getSpeed {
    return self.speed;
}

@end
