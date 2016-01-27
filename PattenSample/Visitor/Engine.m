//
//  Engine.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Engine.h"

@implementation Engine

#pragma mark - CarElement protocol
- (void)acceptPrintVisitor:(CarElementPrintVisitor *)visitor {
    
    [visitor visitEngine:self];
}

- (void)acceptDoVisitor:(CarElementDoVisitor *)visitor {
    
    [visitor visitEngine:self];
}
@end
