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

// 방문자를 받아들이고 그 방문자가 가지고 있는 visit method(알고리즘, 기능?) 을 실행하는 기능이다.
//  CarElement 인터페이스의 정의되있는 메서드를 구현하였다.
- (void)acceptPrintVisitor:(CarElementPrintVisitor *)visitor {
    
    // Visitorクラスに訪問させる
    [visitor visit:self];
}

- (void)acceptDoVisitor:(CarElementDoVisitor *)visitor {
    
    [visitor visit:self];
}
@end
