//
//  ComponentObject.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "ComponentObject.h"

@implementation ComponentObject
- (instancetype)init {
    self = [super init];
    
    if (self) {
        _children = [NSMutableArray new];
    }
    return self;
}

- (NSString *)operation {
    return [self operation:0];
}

- (NSString *)operation:(NSInteger)depth {
    
    NSMutableString *sb = [NSMutableString new];
    
    if ([self isKindOfClass:[ComponentObject class]]) {
        
        for (int i = 0; i < depth; i++) {
            [sb appendString:@"  "];
        }
        
        [sb appendFormat:@"+%@\n", _componentName];
        
        for (ComponentObject *comp in _children) {
            [sb appendFormat:@"%@", [comp operation:(depth+1)]];
        }
        
    }else{
        for (int i = 0; i < depth; i++) {
            [sb appendString:@"  "];
        }
        [sb appendFormat:@"-%@\n", _componentName];
    }
    
    return (NSString *)sb;
}

@end
