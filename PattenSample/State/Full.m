//
//  Full.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Full.h"
#import "Hungury.h"
#import "Angry.h"
#import "Sleeping.h"

@implementation Full

+ (id)sharedInstance {
    
    static Full *_sharedFull = nil;
    
    @synchronized(self) {
        if (_sharedFull == nil) {
            _sharedFull = [[self alloc] init];
        }
    }
    
    return _sharedFull;
}

- (State *)act:(Action)action {
    
    switch (action) {
        case ActionEat:
            return [Angry sharedInstance];
            break;
        case ActionDigest:
            return [Hungury sharedInstance];
            break;
        case ActionGotoBed:
            return [Sleeping sharedInstance];
            break;
        default:
            return nil;
            break;
    }
    
    return nil;
}

@end
