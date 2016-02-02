//
//  Leaf.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "ComponentObject.h"

@interface Leaf : ComponentObject

- (instancetype)initWithName:(NSString *)name;

- (void)add:(ComponentObject *)c;
- (void)remove:(ComponentObject *)c;
- (id)childAtIndex:(int)index;
@end
