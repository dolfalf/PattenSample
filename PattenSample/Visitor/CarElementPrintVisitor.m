//
//  CarElementPrintVisitor.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "CarElementPrintVisitor.h"
#import "Car.h"
#import "Wheel.h"
#import "Engine.h"
#import "Body.h"

//  차요소 프린트 방문자 이다. CarElementVisitor 인터페이스를 구현하여  각각의 차요소가 실행할 기능을 정의 하였다.
@implementation CarElementPrintVisitor

- (void)visitCar:(Car *)car {
    NSLog(@"Visiting %@ car", car.name);
}

- (void)visitWheel:(Wheel *)wheel {
    
    NSLog(@"Visiting %@ wheel", wheel.name);
}

- (void)visitBody:(Body *)body {
    NSLog(@"Visiting %@ body", body.name);
}

- (void)visitEngine:(Engine *)engine {
    NSLog(@"Visiting %@ engine", engine.name);
}

@end
