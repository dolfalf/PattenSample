//
//  CarElementPrintVisitor.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "CarElementPrintVisitor.h"
#import "CarElement.h"
#import "Car.h"
#import "Wheel.h"
#import "Engine.h"
#import "Body.h"

//  차요소 프린트 방문자 이다. CarElementVisitor 인터페이스를 구현하여  각각의 차요소가 실행할 기능을 정의 하였다.
@implementation CarElementPrintVisitor

- (void)visit:(CarElement *)element {
    
    if ([element isMemberOfClass:[Car class]]) {
        NSLog(@"Visiting %@ car", (Car *)element.name);
        
    }else if ([element isMemberOfClass:[Wheel class]]) {
        NSLog(@"Visiting %@ wheel", (Wheel *)element.name);
        
    }else if ([element isMemberOfClass:[Body class]]) {
        NSLog(@"Visiting %@ body", (Body *)element.name);
        
    }else if ([element isMemberOfClass:[Engine class]]) {
        NSLog(@"Visiting %@ engine", (Engine *)element.name);
    }
    
}

@end
