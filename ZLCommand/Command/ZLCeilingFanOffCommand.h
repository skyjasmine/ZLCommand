//
//  ZLCeilingFanOffCommand.h
//  ZLCommand
//
//  Created by DingTalk on 2020/10/10.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLCommand.h"
#import "ZLCeilingFan.h"

@interface ZLCeilingFanOffCommand : NSObject <ZLCommand>

- (instancetype)initWithCellingFan:(ZLCeilingFan *)ceilingFan;

@end

