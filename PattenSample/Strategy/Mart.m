//
//  Mart.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Mart.h"

@implementation Mart

- (instancetype)initWithSeller:(Seller *)seller {
    
    self = [super init];
    
    if (self) {
        _seller = seller;
    }
    
    return self;
}

- (void)order {
    
    [_seller sell];
}

@end
