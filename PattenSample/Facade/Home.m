//
//  Home.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "Home.h"
#import "TV.h"
#import "Audio.h"
#import "Light.h"

@interface Home ()

@property (nonatomic, strong) Audio *audio;
@property (nonatomic, strong) Light *light;
@property (nonatomic, strong) TV *tv;
@end

@implementation Home

- (instancetype)initWithTV:(TV *)tv audio:(Audio *)audio light:(Light *)light {

    self = [super init];
    
    if (self) {
        _tv = tv;
        _audio = audio;
        _light = light;
    }
    
    return self;
}

- (void)enjoyTv {
    NSLog(@"==불을 밝게하고 TV보기.");
    _light.lightness = 2;
    [_tv turnOn];
}

- (void)enjoyMusic {
    NSLog(@"==불을 약간 어둡게하고 음악듣기.");
    _light.lightness = 1;
    [_audio play];
}

- (void)goOut {
    NSLog(@"==TV끄고, 음악도 끄고, 불도 끄고 외출하기.");
    if (_tv.isTurnedOn) {
        [_tv turnOff];
    }
    if (_audio.isPlaying) {
        [_audio stop];
    }
    _light.lightness = 0;
}

@end
