//
//  CarElementPrintVisitor.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;
@class Wheel;
@class Engine;
@class Body;

// 방문자 인터페이스이다.  차의 요소(Car Element , 바퀴,엔진,몸체,차등)별 방문(기능,알고리즘 추가및 확장)하여 실행할 인터페이스이다. visit method를 오버로드 하여 정의?선언?하였다.
@interface CarElementPrintVisitor : NSObject

- (void)visitCar:(Car *)car;
- (void)visitWheel:(Wheel *)wheel;
- (void)visitBody:(Body *)carBody;
- (void)visitEngine:(Engine *)engine;
@end
