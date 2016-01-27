//
//  CarElementDoVisitor.h
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

@interface CarElementDoVisitor : NSObject

- (void)visitCar:(Car *)car;
- (void)visitWheel:(Wheel *)wheel;
- (void)visitBody:(Body *)carBody;
- (void)visitEngine:(Engine *)engine;
@end
