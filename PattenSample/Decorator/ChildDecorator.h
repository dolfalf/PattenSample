//
//  ChildDecorator.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Decorator.h"

@interface ChildDecorator : Decorator

- (instancetype)initWithDecorator:(Decorator *)decorator;
@end
