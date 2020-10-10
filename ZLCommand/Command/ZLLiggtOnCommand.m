//
//  ZLLiggtOnCommand.m
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLLiggtOnCommand.h"

@interface ZLLiggtOnCommand ()

@property (nonatomic, strong) ZLLight *light;

@end

@implementation ZLLiggtOnCommand

- (instancetype)initWithLight:(ZLLight *)light {
    if (self = [super init]) {
        _light = light;
    }
    return self;
}

- (void)execute {
    [self.light on];
}

- (void)undo {
    [self.light off];
}

@end
