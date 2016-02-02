//
//  ChildDecorator.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "ChildDecorator.h"

@interface ChildDecorator ()

@property (nonatomic, strong) Decorator *decorator;
@end

@implementation ChildDecorator

- (instancetype)initWithDecorator:(Decorator *)decorator {
    self = [super init];
    if (self) {
        _decorator = decorator;
    }
    
    return self;
}

- (NSString *)merong {
    return [NSString stringWithFormat:@"@ %@ @", [_decorator merong]];
}
@end


