//
//  CarElement.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "CarElement.h"

@implementation CarElement

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    
    if (self) {
        _name = name;
    }
    
    return self;
}

- (void)acceptPrintVisitor:(CarElementPrintVisitor *)visitor {
    //override
}

- (void)acceptDoVisitor:(CarElementDoVisitor *)visitor {
    //override
}
@end
