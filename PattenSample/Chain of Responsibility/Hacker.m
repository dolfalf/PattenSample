//
//  Hacker.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Hacker.h"

@implementation Hacker

- (instancetype)init {
    self = [super init];
    if (self) {
        self.expertName = @"해커";
    }
    
    return self;
}

- (BOOL)solve:(Problem *)p {
    
    if([p.problemName rangeOfString:@"컴퓨터"].location == NSNotFound){
        return NO;
    }
    
    return YES;
}

@end
