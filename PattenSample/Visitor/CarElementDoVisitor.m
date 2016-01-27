//
//  CarElementDoVisitor.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "CarElementDoVisitor.h"
#import "Car.h"
#import "Wheel.h"
#import "Engine.h"
#import "Body.h"

//  마찬가지로 위에 방문자와 마찬가지로 각 요소들에 대해서 기능(알고리즘)을 정의해주었다.
@implementation CarElementDoVisitor

- (void)visitCar:(Car *)car {
    NSLog(@"Starting my car");
}

- (void)visitWheel:(Wheel *)wheel {
    
    NSLog(@"Kicking my %@ wheel", wheel.name);
}

- (void)visitBody:(Body *)body {
    NSLog(@"Moving my body");
}

- (void)visitEngine:(Engine *)engine {
    NSLog(@"Starting my engine");
}

@end
