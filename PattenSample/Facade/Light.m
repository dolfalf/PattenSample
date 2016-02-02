//
//  Light.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Light.h"

@implementation Light

- (instancetype)init {
    self = [super init];
    if (self) {
        _lightness = 0;
    }
    return self;
}

- (void)setLightness:(NSInteger)lightness {
    NSLog(@"밝기를 %ld 로 변경.", (long)lightness);
    _lightness = lightness;
}

@end
