//
//  ComponentObject.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ComponentObject : NSObject

@property (nonatomic, strong) NSString *componentName;

@property (nonatomic, strong)  NSMutableArray *children;

- (NSString *)operation;
@end
