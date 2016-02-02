//
//  Composite.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Composite.h"

@implementation Composite

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.componentName = name;
    }
    
    return self;
}

- (void)add:(ComponentObject *)c {
    [self.children addObject:c];
}

- (void)remove:(ComponentObject *)c {
    [self.children removeObject:c];
}

- (id)childAtIndex:(int)index {
    return [self.children objectAtIndex:index];
}

@end
