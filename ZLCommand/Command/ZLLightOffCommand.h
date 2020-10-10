//
//  ZLLightOffCommand.h
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLCommand.h"
#import "ZLLight.h"

@interface ZLLightOffCommand : NSObject <ZLCommand>

- (instancetype)initWithLight:(ZLLight *)light;

@end
