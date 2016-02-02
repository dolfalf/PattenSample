//
//  Casanova.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Casanova.h"

@implementation Casanova

- (instancetype)init {
    self = [super init];
    if (self) {
        self.expertName = @"카사노바";
    }
    
    return self;
}

- (BOOL)solve:(Problem *)p {
    
    if([p.problemName rangeOfString:@"여자"].location == NSNotFound
       && [p.problemName rangeOfString:@"여성"].location == NSNotFound){
        return NO;
    }
    
    return YES;
}

@end
