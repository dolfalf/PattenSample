//
//  Angry.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Angry.h"
#import "Full.h"
#import "Hungury.h"
#import "Sleeping.h"

@implementation Angry

+ (id)sharedInstance {
    
    static Angry *_sharedAngry = nil;
    
    @synchronized(self) {
        if (_sharedAngry == nil) {
            _sharedAngry = [[self alloc] init];
        }
    }
    
    return _sharedAngry;
}

- (State *)act:(Action)action {
    
    switch (action) {
        case ActionDigest:
            return [Full sharedInstance];
            break;
        default:
            return nil;
            break;
    }
    
    return nil;
}

@end
