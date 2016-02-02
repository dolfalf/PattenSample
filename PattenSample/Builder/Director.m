//
//  Director.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Director.h"

@interface Director ()

@property (nonatomic, strong) Builder *builder;
@end

@implementation Director

- (instancetype)initWithBuilder:(Builder *)builder {
    self = [super init];
    if (self) {
        _builder = builder;
    }
    return self;
}

- (void)build {
    
    [_builder makeArm];
    [_builder makeLeg];
}

- (Hero *)getHero {
    return [_builder getResult];
}
@end
