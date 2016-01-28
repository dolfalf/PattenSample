//
//  StateContext.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

@interface StateContext : NSObject

@property (nonatomic, strong, readonly) State *currentState;

#if 0
- (void)eat;
- (void)digest;
- (void)gotoBed;
#endif

- (void)processEvent:(Action)action;

@end
