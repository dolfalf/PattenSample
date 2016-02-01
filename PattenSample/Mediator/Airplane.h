//
//  Airplane.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/01.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ControlTower;

@interface Airplane : NSThread

@property (nonatomic, assign, readonly) NSInteger seq;
@property (nonatomic, strong) ControlTower *tower;

- (instancetype)initWithSeq:(NSInteger)seq;
@end
