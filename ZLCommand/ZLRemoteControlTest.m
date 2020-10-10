//
//  ZLRemoteControlTest.m
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLRemoteControlTest.h"
#import "ZLSimpleRemoteControl.h"
#import "ZLLiggtOnCommand.h"
#import "ZLLightOffCommand.h"
#import "ZLGarageDoorOpenCommand.h"
#import "ZLStereoOnCommand.h"
#import "ZLStereoOffCommand.h"
#import "ZLRemoteControl.h"
#import "ZLCeilingFanLowCommand.h"
#import "ZLCellingFanHighCommand.h"
#import "ZLCeilingFanOffCommand.h"

@implementation ZLRemoteControlTest

- (void)simpleRemoteControlTest {
    ZLSimpleRemoteControl *remoteControl = [ZLSimpleRemoteControl new];
    ZLLight *light = [ZLLight new];
    ZLLiggtOnCommand *lightOn = [[ZLLiggtOnCommand alloc] initWithLight:light];
    
    remoteControl.slot = lightOn;
    [remoteControl buttonWasPressed];
    
    ZLGarageDoor *garageDoor = [ZLGarageDoor new];
    ZLGarageDoorOpenCommand *garageDoorOpen = [[ZLGarageDoorOpenCommand alloc] initWithGarageDoor:garageDoor];
    remoteControl.slot = garageDoorOpen;
    [remoteControl buttonWasPressed];
}

- (void)remoteControlTest {
    ZLLight *light =  [ZLLight new];
    ZLStereo *stereo = [ZLStereo new];
    ZLLiggtOnCommand *lightOnCommand = [[ZLLiggtOnCommand alloc] initWithLight:light];
    ZLLightOffCommand *lightOffCommand = [[ZLLightOffCommand alloc] initWithLight:light];
    ZLStereoOnCommand *stereoOnCommand = [[ZLStereoOnCommand alloc] initWithStereo:stereo];
    ZLStereoOffCommand *stereoOffCommand = [[ZLStereoOffCommand alloc]initWithStereo:stereo];
    
    ZLRemoteControl *remoteControl = [ZLRemoteControl new];
//    [remoteControl setWithOnCommand:lightOnCommand offCommand:lightOffCommand];
//    [remoteControl setWithOnCommand:stereoOnCommand offCommand:stereoOffCommand];
//
//    [remoteControl printCommands];
    
//    [remoteControl onButtonWasPressed:0];
//    [remoteControl offButtonWasPushed:0];
//    [remoteControl onButtonWasPressed:1];
//    [remoteControl offButtonWasPushed:1];
    
//    [remoteControl onButtonWasPressed:0];
//    [remoteControl offButtonWasPushed:0];
//    [remoteControl undoButtonWasPushed];
//    [remoteControl offButtonWasPushed:0];
//    [remoteControl onButtonWasPressed:0];
//    [remoteControl undoButtonWasPushed];
    
    ZLCeilingFan *ceilingFan = [ZLCeilingFan new];
    ZLCeilingFanLowCommand *ceilingFanLow = [[ZLCeilingFanLowCommand alloc] initWithCellingFan:ceilingFan];
    ZLCellingFanHighCommand *ceilingFanHigh = [[ZLCellingFanHighCommand alloc] initWithCellingFan:ceilingFan];
    ZLCeilingFanOffCommand *ceilingFanOff = [[ZLCeilingFanOffCommand alloc] initWithCellingFan:ceilingFan];
    
    [remoteControl setWithOnCommand:ceilingFanLow offCommand:ceilingFanOff];
    [remoteControl setWithOnCommand:ceilingFanHigh offCommand:ceilingFanOff];
    
    [remoteControl onButtonWasPressed:0];
    [remoteControl offButtonWasPushed:0];
    [remoteControl printCommands];
    [remoteControl undoButtonWasPushed];
    
    [remoteControl onButtonWasPressed:1];
    [remoteControl printCommands];
    [remoteControl undoButtonWasPushed];
    
}

@end
