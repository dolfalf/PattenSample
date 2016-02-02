//
//  Audio.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Audio.h"

@interface Audio ()

@end

@implementation Audio

- (instancetype)init {
    self = [super init];
    if (self) {
        _playing = NO;
    }
    return self;
}

- (void)play {
    self.playing = YES;
    NSLog(@"음악을 연주.");
}

- (void)stop {
    self.playing = NO;
    NSLog(@"음악을 멈춤");
}

@end
