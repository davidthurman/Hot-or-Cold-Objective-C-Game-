//
//  mainGame.h
//  Hot or Cold
//
//  Created by David Thurman on 2/7/16.
//  Copyright © 2016 David Thurman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mainGame : UIViewController
@property(nonatomic) NSString *chosen;
@property NSNumber *teamOnePoints;
@property NSNumber *teamTwoPoints;
@property (strong, nonatomic) IBOutlet UILabel *teamOneCurrentScore;
@property (strong, nonatomic) IBOutlet UILabel *teamTwoCurrentScore;
- (IBAction)teamOnePlusOne:(id)sender;
- (IBAction)teamTwoPlusOne:(id)sender;

@end
