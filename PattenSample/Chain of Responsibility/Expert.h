//
//  Expert.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Problem.h"

@interface Expert : NSObject

@property (nonatomic, strong) NSString *expertName;

- (Expert *)setupNext:(Expert *)exert;

- (void)support:(Problem *)p;
- (BOOL)solve:(Problem *)p;
@end
