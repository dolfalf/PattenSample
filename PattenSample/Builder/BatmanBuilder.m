//
//  BatmanBuilder.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "BatmanBuilder.h"

@interface BatmanBuilder ()

@property (nonatomic, strong) Hero *batman;
@end

@implementation BatmanBuilder


- (instancetype)init {
    self = [super init];
    if (self) {
        _batman = [[Hero alloc] initWithName:@"배트맨"];
    }
    
    return self;
}

- (void)makeArm {
    _batman.armSource = @"돈지랄";
}

- (void)makeLeg {
    _batman.legSource = @"돈지랄";
}

- (Hero *)getResult {
    return _batman;
}

@end
