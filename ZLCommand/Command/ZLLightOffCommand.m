//
//  ZLLightOffCommand.m
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLLightOffCommand.h"

@interface ZLLightOffCommand ()

@property (nonatomic, strong) ZLLight *light;

@end

@implementation ZLLightOffCommand

- (instancetype)initWithLight:(ZLLight *)light {
    if (self = [super init]) {
        _light = light;
    }
    return self;
}

- (void)execute {
    [self.light off];
}

- (void)undo {
    [self.light on];
}

@end
