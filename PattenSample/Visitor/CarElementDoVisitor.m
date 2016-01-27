//
//  CarElementDoVisitor.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "CarElementDoVisitor.h"
#import "CarElement.h"
#import "Car.h"
#import "Wheel.h"
#import "Engine.h"
#import "Body.h"

//  마찬가지로 위에 방문자와 마찬가지로 각 요소들에 대해서 기능(알고리즘)을 정의해주었다.
@implementation CarElementDoVisitor

- (void)visit:(CarElement *)element {
    
    if ([element isMemberOfClass:[Car class]]) {
        NSLog(@"Starting my car");
        
    }else if ([element isMemberOfClass:[Wheel class]]) {
        NSLog(@"Kicking my %@ wheel", (Wheel *)element.name);
        
    }else if ([element isMemberOfClass:[Body class]]) {
        NSLog(@"Moving my body");
        
    }else if ([element isMemberOfClass:[Engine class]]) {
        NSLog(@"Starting my engine");
    }
}

@end
