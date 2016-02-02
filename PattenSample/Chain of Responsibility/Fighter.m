//
//  Fighter.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Fighter.h"

@implementation Fighter

- (instancetype)init {
    self = [super init];
    if (self) {
        self.expertName = @"격투가";
    }
    
    return self;
}

- (BOOL)solve:(Problem *)p {
    
    if([p.problemName rangeOfString:@"깡패"].location == NSNotFound){
        return NO;
    }

    return YES;
}

@end
