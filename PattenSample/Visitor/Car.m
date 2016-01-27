//
//  Car.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Car.h"
#import "Wheel.h"
#import "Engine.h"
#import "Body.h"

@interface Car ()

@property (nonatomic, strong) NSArray *carElements;
@end

@implementation Car

- (instancetype)initWithName:(NSString *)name {
    
    self = [super initWithName:name];
    
    if (self) {
        //Initialize.
        //차 클래스 생성자. 각각의 바퀴 4개 몸체 엔진등을 여기서 담아 주었다.
        Wheel *front_left_wheel = [[Wheel alloc] initWithName:@"front left"];
        Wheel *front_right_wheel = [[Wheel alloc] initWithName:@"front right"];
        Wheel *rear_left_wheel = [[Wheel alloc] initWithName:@"rear left"];
        Wheel *rear_right_wheel = [[Wheel alloc] initWithName:@"rear right"];
        Body *body = [[Body alloc] initWithName:@"body"];
        Engine *engine = [[Engine alloc] initWithName:@"engine"];
        
        _carElements = @[front_left_wheel,
                         front_right_wheel,
                         rear_left_wheel,
                         rear_right_wheel,
                         body,
                         engine];
    }
    
    return self;
}

// 마찬가지로 CarElement 인터페이스의 accept 를 오버라이드 하였다
- (void)acceptPrintVisitor:(CarElementPrintVisitor *)visitor {
    
    //  위에 생성자로 생성된  배열을 이용하여 확장 for 문을 실행하여 각각의 요소들이 가지고있는 accept(Visitor visitor)  를 실행한다.
    for(CarElement *element in _carElements) {
        [element acceptPrintVisitor:visitor];
    }
    
    [visitor visitCar:self];
}

// 마찬가지
- (void)acceptDoVisitor:(CarElementDoVisitor *)visitor {
    
    //  위에 생성자로 생성된  배열을 이용하여 확장 for 문을 실행하여 각각의 요소들이 가지고있는 accept(Visitor visitor)  를 실행한다.
    for(CarElement *element in _carElements) {
        [element acceptDoVisitor:visitor];
    }
    
    [visitor visitCar:self];
}

@end
