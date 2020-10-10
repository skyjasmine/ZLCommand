//
//  ZLSImpleRemoteControl.h
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZLCommand;

@interface ZLSimpleRemoteControl : NSObject

@property (nonatomic, strong) id<ZLCommand> slot;    //插槽持有命令

- (void)buttonWasPressed;

@end
