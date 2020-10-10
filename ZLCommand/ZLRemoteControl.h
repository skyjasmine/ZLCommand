//
//  ZLRemoteControl.h
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLCommand.h"

@interface ZLRemoteControl : NSObject

@property (nonatomic, strong, readonly) NSMutableArray<id<ZLCommand>> *onCommands;
@property (nonatomic, strong, readonly) NSMutableArray<id<ZLCommand>> *offCommands;


- (void)onButtonWasPressed:(NSUInteger)slot;
- (void)offButtonWasPushed:(NSUInteger)slot;
- (void)undoButtonWasPushed;
- (void)setWithOnCommand:(id<ZLCommand>)onCommand offCommand:(id<ZLCommand>)offCommand;
- (void)printCommands;
@end
