//
//  Hungury.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Hungury.h"
#import "Full.h"
#import "Angry.h"
#import "Sleeping.h"



@implementation Hungury

+ (id)sharedInstance {
    
    static Hungury *_sharedHungury = nil;
    
    @synchronized(self) {
        if (_sharedHungury == nil) {
            _sharedHungury = [[self alloc] init];
        }
    }
    
    return _sharedHungury;
}


- (State *)act:(Action)action {
    
    switch (action) {
        case ActionEat:
            return [Full sharedInstance];
            break;
        case ActionDigest:
            return [Angry sharedInstance];
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
