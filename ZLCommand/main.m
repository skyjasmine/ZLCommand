//
//  main.m
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLRemoteControlTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ZLRemoteControlTest *controlTest = [ZLRemoteControlTest new];
//        [controlTest simpleRemoteControlTest];
        [controlTest remoteControlTest];
        
    }
    return 0;
}
