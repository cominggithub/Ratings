//
//  Player.h
//  Ratings
//
//  Created by Coming on 12/12/5.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *game;
@property (nonatomic, assign) int rating;

@end
