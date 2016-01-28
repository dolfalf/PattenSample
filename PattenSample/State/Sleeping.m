//
//  Sleeping.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Sleeping.h"
#import "Full.h"
#import "Hungury.h"
#import "Angry.h"

@implementation Sleeping

+ (id)sharedInstance {
    
    static Sleeping *_sharedSleeping = nil;
    
    @synchronized(self) {
        if (_sharedSleeping == nil) {
            _sharedSleeping = [[self alloc] init];
        }
    }
    
    return _sharedSleeping;
}

- (void)onEntry {
    NSLog(@"이불펴고 잘준비 함.");
}

- (State *)act:(Action)action {
    
    return nil;
}

@end
