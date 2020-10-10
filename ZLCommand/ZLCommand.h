//
//  ZLCommand.h
//  ZLCommand
//
//  Created by DingTalk on 2020/9/27.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZLCommand <NSObject>

@optional
- (void)execute;
- (void)undo;

@end


