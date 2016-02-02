//
//  AnimalFactory.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Cow.h"
#import "Cat.h"
#import "Dog.h"

@interface AnimalFactory : NSObject

+ (Animal *)create:(NSString *)animalName;
@end
