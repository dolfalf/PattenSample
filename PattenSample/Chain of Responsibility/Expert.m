//
//  Expert.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Expert.h"

@interface Expert ()

@property (nonatomic, strong)Expert *next;
@end

@implementation Expert

- (Expert *)setupNext:(Expert *)exert {
    self.next = exert;
    
    return _next;
}

- (void)support:(Problem *)p {
    
    if ([self solve:p]) {
        NSLog(@"%@이(가)%@을(를) 해결해 버렸네.", _expertName, p.problemName);
        
    }else{
        if (_next != nil) {
            [_next support:p];
        }else{
            NSLog(@"%@은(는) 해결할 넘이 없다.", p.problemName);
        }
    }
}

- (BOOL)solve:(Problem *)p {
    //override
    return NO;
}

@end
