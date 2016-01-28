//
//  State.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "State.h"

@implementation State

+ (id)sharedInstance {
    
    return nil;
}

- (id)init
{
    self = [super init];
    if (self) {
        //Initialization
    }
    return self;
}

- (State *)act:(Action)action {
    //override.
    
    return nil;
}

- (void)onEntry {
    //override.
}

- (void)onExit {
    //override.
}

@end
