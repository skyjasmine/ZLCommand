//
//  ZLStereoOnCommand.h
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLCommand.h"
#import "ZLStereo.h"

@interface ZLStereoOnCommand : NSObject <ZLCommand>

- (instancetype)initWithStereo:(ZLStereo *)stereo;

@end

