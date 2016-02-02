//
//  Problem.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Problem : NSObject

@property (nonatomic, strong, readonly) NSString *problemName;

- (instancetype)initWithName:(NSString *)name;
@end
