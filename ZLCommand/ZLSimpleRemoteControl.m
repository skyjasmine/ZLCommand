//
//  ZLSImpleRemoteControl.m
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLSimpleRemoteControl.h"
#import "ZLCommand.h"

@implementation ZLSimpleRemoteControl

- (void)buttonWasPressed {
    [self.slot execute];
}

@end
