//
//  Mart.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Seller.h"

@interface Mart : NSObject

@property (nonatomic, strong) Seller *seller;

- (instancetype)initWithSeller:(Seller *)seller;

- (void)order;
@end
