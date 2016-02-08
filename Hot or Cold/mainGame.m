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
    self.teamOnePoints = [NSNumber numberWithInt:0];
    self.teamTwoPoints = [NSNumber numberWithInt:0];
    NSLog(@"%@", self.teamOnePoints);
    NSLog(@"%@", self.chosen);
    
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
    [_teamOneCurrentScore setText:[NSString stringWithFormat:@"Team 1: %@", self.teamOnePoints]];
    if ([self.teamOnePoints intValue] == 5) {
        [_teamOneCurrentScore setText:@"Team 1: Winner!"];
    }
}

- (IBAction)teamTwoPlusOne:(id)sender {
    self.teamTwoPoints = [NSNumber numberWithInt:[self.teamTwoPoints intValue] + 1];
    [_teamTwoCurrentScore setText:[NSString stringWithFormat:@"Team 2: %@", self.teamTwoPoints]];
    if ([self.teamTwoPoints intValue] == 5) {
        [_teamTwoCurrentScore setText:@"Team 2: Winner!"];
    }
}
@end
