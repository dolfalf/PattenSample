//
//  Builder.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hero.h"

@interface Builder : NSObject

- (void)makeArm;
- (void)makeLeg;
- (Hero *)getResult;
@end
