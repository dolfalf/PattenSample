//
//  AnimalFactory.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "AnimalFactory.h"

@implementation AnimalFactory

+ (Animal *)create:(NSString *)animalName {
    
    if (animalName == nil) {
        NSLog(@"null은 안 되지롱~");
        return nil;
    }
    
    if ([animalName isEqualToString:@"소"]) {
        return [Cow new];
    }else if ([animalName isEqualToString:@"고양이"]) {
        return [Cat new];
    }else if ([animalName isEqualToString:@"개"]) {
        return [Dog new];
    }else{
        return nil;
    }
}

@end
