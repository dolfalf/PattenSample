//
//  TV.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "TV.h"

@interface TV ()

@end

@implementation TV

- (instancetype)init {
    self = [super init];
    if (self) {
        _onoff = NO;
    }
    return self;
}

- (void)turnOn {
    _onoff = YES;
    NSLog(@"TV를 켬.");
}

- (void)turnOff {
    _onoff = false;
    NSLog(@"TV를 끔.");
}

@end
