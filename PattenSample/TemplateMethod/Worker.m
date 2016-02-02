//
//  Worker.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Worker.h"

@implementation Worker

- (void)doit {
    //override
}

- (void)work {
    
    NSLog(@"출근");
    [self doit];
    NSLog(@"퇴근");
}
@end
