//
//  Audio.h
//  PattenSample
//
//  Created by lee jaeeun on 2016/02/02.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Audio : NSObject

@property (nonatomic, assign, getter=isPlaying) BOOL playing;

- (void)play;
- (void)stop;
@end
