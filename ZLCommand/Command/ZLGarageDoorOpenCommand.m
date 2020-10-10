//
//  ZLGarageDoorCommand.m
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLGarageDoorOpenCommand.h"

@implementation ZLGarageDoorOpenCommand

- (instancetype)initWithGarageDoor:(ZLGarageDoor *)garageDoor {
    if (self = [super init]) {
        _garageDoor = garageDoor;
    }
    return self;
}

- (void)execute {
    [self.garageDoor up];
}

@end
