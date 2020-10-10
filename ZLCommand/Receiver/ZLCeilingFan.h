//
//  ZLCellingFan.h
//  ZLCommand
//
//  Created by DingTalk on 2020/10/9.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ZLCeilingFanSpeed) {
    ZLCeilingFanSpeedOFF = 0,
    ZLCeilingFanSpeedLow,
    ZLCeilingFanSpeedMedium,
    ZLCeilingFanSpeedHigh
};

@interface ZLCeilingFan : NSObject

@property (nonatomic, assign) ZLCeilingFanSpeed speed;

- (void)high;
- (void)medium;
- (void)low;
- (void)off;
- (ZLCeilingFanSpeed)getSpeed;

@end
