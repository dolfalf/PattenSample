//
//  State.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Action) {
    ActionEat,
    ActionDigest,
    ActionGotoBed,
};

@interface State : NSObject

+ (id)sharedInstance;

- (State *)act:(Action)action;

- (void)onEntry;
- (void)onExit;

@end
