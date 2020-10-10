//
//  ZLGarageDoor.h
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZLGarageDoor : NSObject

- (void)up;
- (void)down;
- (void)stop;
- (void)lightOn;
- (void)lightOff;

@end

