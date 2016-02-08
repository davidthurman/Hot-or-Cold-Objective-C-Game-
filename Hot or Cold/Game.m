//
//  Game.m
//  Hot or Cold
//
//  Created by David Thurman on 2/7/16.
//  Copyright © 2016 David Thurman. All rights reserved.
//

#import "Game.h"


@interface Game ()

@end

@implementation Game

-(void)teamOneScore{
    self.teamOnePoints = @([self.teamOnePoints intValue] + 1);
}
-(void)teamTwoScore{
    self.teamTwoPoints = @([self.teamTwoPoints intValue] + 1);
}
-(void)timerFinal{
    
}
-(void)resetGame{
    
}

@end
