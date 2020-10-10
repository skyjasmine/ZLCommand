//
//  ZLGarageDoorCommand.h
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLGarageDoor.h"
#import "ZLCommand.h"

@interface ZLGarageDoorOpenCommand : NSObject <ZLCommand>

@property (nonatomic, strong) ZLGarageDoor *garageDoor;

- (instancetype)initWithGarageDoor:(ZLGarageDoor *)garageDoor;

@end

