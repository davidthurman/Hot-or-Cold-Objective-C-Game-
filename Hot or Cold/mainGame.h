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
@property(nonatomic) NSMutableArray *pickedCategory;
@property(nonatomic) NSArray *movieArray;
@property(nonatomic) NSArray *foodArray;
@property(nonatomic) NSArray *placesArray;
@property(nonatomic) NSArray *sportsArray;
@property(nonatomic) NSArray *musicArray;
@property(nonatomic) NSArray *kidsArray;
@property NSNumber *teamOnePoints;
@property NSNumber *teamTwoPoints;
@property (strong, nonatomic) IBOutlet UILabel *teamOneCurrentScore;
@property (strong, nonatomic) IBOutlet UILabel *teamTwoCurrentScore;
@property (strong, nonatomic) IBOutlet UIButton *playLabel;
-(void)reset;
- (IBAction)teamOnePlusOne:(id)sender;
- (IBAction)teamTwoPlusOne:(id)sender;
- (IBAction)playButton:(id)sender;
- (IBAction)changeCategory:(id)sender;

@end
