//
//  ZLRemoteControl.m
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//
#import "ZLRemoteControl.h"

@interface ZLRemoteControl ()

@property (nonatomic, strong, readwrite) NSMutableArray<id<ZLCommand>> *onCommands;
@property (nonatomic, strong, readwrite) NSMutableArray<id<ZLCommand>> *offCommands;

@property (nonatomic, strong) id<ZLCommand> undoCommand;  //上一个执行的命令

@end

@implementation ZLRemoteControl

- (instancetype)init {
    if (self = [super init]) {
        _onCommands = [[NSMutableArray alloc] init];
        _offCommands = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)setWithOnCommand:(id<ZLCommand>)onCommand offCommand:(id<ZLCommand>)offCommand {
    [self.onCommands addObject:onCommand];
    [self.offCommands addObject:offCommand];
}

- (void)onButtonWasPressed:(NSUInteger)slot {
    [(self.onCommands)[slot] execute];
    self.undoCommand = (self.onCommands)[slot];
}

- (void)offButtonWasPushed:(NSUInteger)slot {
    [(self.offCommands)[slot] execute];
    self.undoCommand = (self.offCommands)[slot];
}

- (void)undoButtonWasPushed {
    [self.undoCommand undo];
}

- (void)printCommands {
    NSLog(@"---------Remote Control-------\n");
    for(NSUInteger i = 0; i < (self.onCommands).count; i++) {
        NSString *string = [NSString stringWithFormat:@"[slot %lu]:%@  %@", (unsigned long)i, [(self.onCommands)[i] class], [(self.offCommands)[i] class]];
        NSLog(@"%@",string);
    }
}
@end
