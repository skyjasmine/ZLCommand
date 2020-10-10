//
//  ZLStereo.h
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZLStereo : NSObject

- (void)on;
- (void)off;
- (void)setCD;
- (void)setVolume:(NSUInteger)volume;

@end

