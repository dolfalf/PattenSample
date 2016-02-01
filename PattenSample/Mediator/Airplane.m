//
//  Airplane.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/01.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Airplane.h"
#import "ControlTower.h"

@interface Airplane ()

@end

@implementation Airplane

- (instancetype)initWithSeq:(NSInteger)seq {
    
    self = [super init];
    
    if (self) {
        _seq = seq;
    }
    
    return self;
}

- (void)main {
    
    if (_tower == nil) {
        return;
    }
    
    while (!_tower.permisson) {
        NSLog(@"%ld번 째 비행기 대기 중.", (long)_seq);
        [NSThread sleepForTimeInterval:2];
    }
    
    [_tower land:self];
}

@end
