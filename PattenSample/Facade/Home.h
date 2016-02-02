//
//  Home.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TV.h"
#import "Audio.h"
#import "Light.h"

//Facade클래스
@interface Home : NSObject

- (instancetype)initWithTV:(TV *)tv audio:(Audio *)audio light:(Light *)light;

- (void)enjoyTv;
- (void)enjoyMusic;
- (void)goOut;

@end
