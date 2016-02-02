//
//  Hero.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject
@property (nonatomic, strong) NSString *armSource;
@property (nonatomic, strong) NSString *legSource;

- (instancetype)initWithName:(NSString *)name;
- (void)showResult;
@end
