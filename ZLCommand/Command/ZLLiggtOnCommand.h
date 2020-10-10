//
//  ZLLiggtOnCommand.h
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLCommand.h"
#import "ZLLight.h"

@interface ZLLiggtOnCommand : NSObject <ZLCommand>

- (instancetype)initWithLight:(ZLLight *)light;

@end

