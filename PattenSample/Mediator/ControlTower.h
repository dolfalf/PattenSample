//
//  ControlTower.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/01.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Airplane;

@interface ControlTower : NSObject

@property (atomic, assign, readonly) BOOL permisson;

- (void)land:(Airplane *)airplane;
@end
