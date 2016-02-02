//
//  Hero.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Hero.h"

@interface Hero ()

@property (nonatomic, strong) NSString *name;
@end

@implementation Hero

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)showResult {
    NSLog(@"%@로 만든 팔과 %@로 만든 다리를 가진 %@", _armSource ,_legSource, _name);
}

@end
