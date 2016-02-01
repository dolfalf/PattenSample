//
//  ControlTower.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/01.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "ControlTower.h"
#import "Airplane.h"

@interface ControlTower ()
@property (nonatomic, assign) BOOL inUse;

@end

@implementation ControlTower

@dynamic  permisson;

- (BOOL)permisson {
    
    if (_inUse) {
        return NO;
    }else{
        _inUse = YES;
        return YES;
    }
}

- (void)land:(Airplane *)airplane {
    
    NSInteger seq = airplane.seq;
    NSLog(@"%ld번 비행기 착륙 시작", (long)seq);
    
    [NSThread sleepForTimeInterval:1];
    NSLog(@"%ld번 비행기 착륙 끝",(long)seq);
    _inUse = NO;
}

@end
