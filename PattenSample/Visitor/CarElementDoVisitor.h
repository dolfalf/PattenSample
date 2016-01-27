//
//  CarElementDoVisitor.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CarElement;

@interface CarElementDoVisitor : NSObject

- (void)visit:(CarElement *)element;
@end
