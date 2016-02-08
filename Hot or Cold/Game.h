//
//  Game.h
//  Hot or Cold
//
//  Created by David Thurman on 2/7/16.
//  Copyright © 2016 David Thurman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject
@property NSNumber *teamOnePoints;
@property NSNumber *teamTwoPoints;
@property NSNumber *timer;
@property NSArray *choices;

-(void)teamOneScore;
-(void)teamTwoScore;
-(void)timerFinal;
-(void)resetGame;


@end
