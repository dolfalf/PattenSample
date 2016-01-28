//
//  StateContext.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "StateContext.h"
#import "Hungury.h"

@implementation StateContext

- (id)init
{
    self = [super init];
    
    if (self) {
        // 初期状態を設定する。
        _currentState = [Hungury sharedInstance];
    }
    
    return self;
}

- (void)processEvent:(Action)action {
    
    State *next = [_currentState act:action];
    
    // 状態遷移を行う。
    if (next != nil) {
        [_currentState onExit];
        NSLog(@"action[%d]에 의해 State가 %@ 에서 %@ 로 바뀜.", (int)action, _currentState, next);
        _currentState = next;
        [_currentState onEntry];

#if 0
        if (State.isFinalState(currentState)) {
            NSLog("오메~ 마지막 State에 도달했네~");
        }
#endif
    } else {
        NSLog(@"action[%d]은 State가 %@ 에서는 의미 없는 짓.", (int)action, _currentState);
    }
    
}

@end
