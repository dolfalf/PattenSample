//
//  CarElement.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarElementPrintVisitor.h"
#import "CarElementDoVisitor.h"

/* 차요소를 구현할 클래스.
 모든 차 요소들은 방문자를 받아들일 accept 메서드를 구현한다.
 */
@interface CarElement : NSObject

@property (nonatomic, strong, readonly) NSString *name;

- (instancetype)initWithName:(NSString *)name;


// Visitor를 받아들일 메서드
- (void)acceptPrintVisitor:(CarElementPrintVisitor *)visitor;
- (void)acceptDoVisitor:(CarElementDoVisitor *)visitor;
@end
