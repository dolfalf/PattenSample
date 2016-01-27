//
//  Body.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Body.h"

@implementation Body

- (void)acceptPrintVisitor:(CarElementPrintVisitor *)visitor {
    
    [visitor visitBody:self];
}

- (void)acceptDoVisitor:(CarElementDoVisitor *)visitor {
    
    [visitor visitBody:self];
}
@end
