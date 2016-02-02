//
//  Problem.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Problem.h"

@implementation Problem

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _problemName = name;
    }
    
    return self;
}
@end
