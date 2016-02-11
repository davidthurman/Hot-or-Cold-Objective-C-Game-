//
//  mainGame.m
//  Hot or Cold
//
//  Created by David Thurman on 2/7/16.
//  Copyright © 2016 David Thurman. All rights reserved.
//


#import "mainGame.h"
#import "Categories.h"

@interface mainGame ()

@end
 

@implementation mainGame

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"Main Game First Starting: Team One points: %@ and Team Two: %@", self.teamOnePoints, self.teamTwoPoints);
    
    //Get points set up in case points were not passed in from categories
    if (self.teamOnePoints == NULL && self.teamTwoPoints == NULL) {
        NSLog(@"1");
        self.teamOnePoints = [NSNumber numberWithInt:0];
        self.teamTwoPoints = [NSNumber numberWithInt:0];
        [_teamOneCurrentScore setText:[NSString stringWithFormat:@"Team 1: %@", self.teamOnePoints]];
        [_teamTwoCurrentScore setText:[NSString stringWithFormat:@"Team 2: %@", self.teamTwoPoints]];
    }
    
    //If only one team had previously scored
    else if (self.teamOnePoints == NULL){
        NSLog(@"2");
        self.teamOnePoints = [NSNumber numberWithInt:0];
        [_teamOneCurrentScore setText:[NSString stringWithFormat:@"Team 1: %@", self.teamOnePoints]];
    }
    else if (self.teamTwoPoints == NULL){
        NSLog(@"3");
        self.teamTwoPoints = [NSNumber numberWithInt:0];
        [_teamTwoCurrentScore setText:[NSString stringWithFormat:@"Team 2: %@", self.teamTwoPoints]];
    }
    else{
        [_teamOneCurrentScore setText:[NSString stringWithFormat:@"Team 1: %@", self.teamOnePoints]];
        [_teamTwoCurrentScore setText:[NSString stringWithFormat:@"Team 2: %@", self.teamTwoPoints]];
        if ([self.teamOnePoints intValue] == 5) {
            [_teamOneCurrentScore setText:@"Team 1: Winner!"];
        }
        if ([self.teamTwoPoints intValue] == 5) {
            [_teamTwoCurrentScore setText:@"Team 2: Winner!"];
        }
    }
    

    
    self.movieArray = [NSArray arrayWithObjects:@"Harry Potter",@"Lord of the Rings", @"Star Wars", @"The Avengers", @"Shawshank Redemption", @"Ant-Man", @"Iron Man",@"The Wizard of Oz", @"Forest Gump", //10
        @"E.T.",@"The Silence of the Lambs", @"Gladiator", @"Titanic", @"Saving Private Ryan", @"Rocky", @"Indiana Jones", @"Jaws", @"Rain Man",@"Good Will Hunting", //20
        nil];
    self.foodArray = [NSArray arrayWithObjects:@"Apple", @"Banana", nil];
    self.placesArray = [NSArray arrayWithObjects:@"Paris", nil];
    self.sportsArray = [NSArray arrayWithObjects:@"Football", nil];
    self.musicArray = [NSArray arrayWithObjects:@"Journey", nil];
    self.kidsArray = [NSArray arrayWithObjects:@"Ball", nil];
    

    [self reset];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)teamOnePlusOne:(id)sender {
    self.teamOnePoints = [NSNumber numberWithInt:[self.teamOnePoints intValue] + 1];
    //If someone has won, reset both to 0
    if ([self.teamOnePoints intValue] == 6) {
        [_teamOneCurrentScore setText:@"Team 1: 0"];
        [_teamTwoCurrentScore setText:@"Team 2: 0"];
        self.teamTwoPoints = [NSNumber numberWithInt:0];
        self.teamOnePoints = [NSNumber numberWithInt:0];
    }
    if ([self.teamTwoPoints intValue] == 5){
        [_teamOneCurrentScore setText:@"Team 1: 0"];
        [_teamTwoCurrentScore setText:@"Team 2: 0"];
        self.teamTwoPoints = [NSNumber numberWithInt:0];
        self.teamOnePoints = [NSNumber numberWithInt:0];
    }
    [_teamOneCurrentScore setText:[NSString stringWithFormat:@"Team 1: %@", self.teamOnePoints]];
    if ([self.teamOnePoints intValue] == 5) {
        [_teamOneCurrentScore setText:@"Team 1: Winner!"];
    }
}

- (IBAction)teamTwoPlusOne:(id)sender {
    self.teamTwoPoints = [NSNumber numberWithInt:[self.teamTwoPoints intValue] + 1];
    //If someone has won, reset both to 0
    if ([self.teamTwoPoints intValue] == 6) {
        [_teamOneCurrentScore setText:@"Team 1: 0"];
        [_teamTwoCurrentScore setText:@"Team 2: 0"];
        self.teamTwoPoints = [NSNumber numberWithInt:0];
        self.teamOnePoints = [NSNumber numberWithInt:0];
    }
    if ([self.teamOnePoints intValue] == 5){
        [_teamOneCurrentScore setText:@"Team 1: 0"];
        [_teamTwoCurrentScore setText:@"Team 2: 0"];
        self.teamTwoPoints = [NSNumber numberWithInt:0];
        self.teamOnePoints = [NSNumber numberWithInt:0];
    }
    [_teamTwoCurrentScore setText:[NSString stringWithFormat:@"Team 2: %@", self.teamTwoPoints]];
    if ([self.teamTwoPoints intValue] == 5) {
        [_teamTwoCurrentScore setText:@"Team 2: Winner!"];
    }
}
-(void)reset{
    if ([self.chosen  isEqual: @"movies"]) {
        self.pickedCategory = [self.movieArray mutableCopy];
    }
    else if ([self.chosen isEqual:@"food"]) {
        self.pickedCategory = [self.foodArray mutableCopy];
    }
    else if ([self.chosen isEqual:@"places"]){
        self.pickedCategory = [self.placesArray mutableCopy];
    }
    else if ([self.chosen isEqual:@"sports"]){
        self.pickedCategory = [self.placesArray mutableCopy];
    }
    else if ([self.chosen isEqual:@"music"]){
        self.pickedCategory = [self.musicArray mutableCopy];
    }
    else if ([self.chosen isEqual:@"kids"]){
        self.pickedCategory = [self.kidsArray mutableCopy];
    }
}

- (IBAction)playButton:(id)sender {
    int randomNumber = arc4random_uniform(14);
    int counter = 0;
    
    while ([self.pickedCategory[randomNumber]  isEqual: @""]) {
        if (counter == 40) {
            [self reset];
        }
        randomNumber = arc4random_uniform(14);
        counter ++;
    }
    NSString *blank = @"";
    [self.playLabel setTitle:self.pickedCategory[randomNumber]  forState:UIControlStateNormal];
    
    self.pickedCategory[randomNumber] = blank;
    
    
}

- (IBAction)changeCategory:(id)sender {
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if (self.teamOnePoints != NULL) {
        Categories *controller = (Categories *)segue.destinationViewController;
        controller.teamOnePoints = self.teamOnePoints;
    }
    if (self.teamTwoPoints != NULL) {
        Categories *controller = (Categories *)segue.destinationViewController;
        controller.teamTwoPoints = self.teamTwoPoints;
    }
}

@end
