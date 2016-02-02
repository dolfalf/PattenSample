//
//  TV.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TV : NSObject

@property (nonatomic, assign, getter=isTurnedOn) BOOL onoff;

- (void)turnOn;
- (void)turnOff;

@end
