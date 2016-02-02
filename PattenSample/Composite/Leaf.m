//
//  Leaf.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.componentName = name;
    }
    
    return self;
}

- (void)add:(ComponentObject *)c {
    NSLog(@"has not node.");
}

- (void)remove:(ComponentObject *)c{
    NSLog(@"has not node.");
}

- (id)childAtIndex:(int)index {
    return [self.children objectAtIndex:index];
}

@end
