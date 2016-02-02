//
//  Director.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"

@interface Director : NSObject

- (instancetype)initWithBuilder:(Builder *)builder;

- (void)build;
- (Hero *)getHero;
@end
