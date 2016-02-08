//
//  Categories.m
//  Hot or Cold
//
//  Created by David Thurman on 2/8/16.
//  Copyright © 2016 David Thurman. All rights reserved.
//

#import "Categories.h"
#import "mainGame.h"

@interface Categories ()

@end

@implementation Categories

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"foodChosen"]){
        self.chosen = @"food";
        mainGame *controller = (mainGame *)segue.destinationViewController;
        controller.chosen = self.chosen;
    }
    if([segue.identifier isEqualToString:@"moviesChosen"]){
        self.chosen = @"movies";
        mainGame *controller = (mainGame *)segue.destinationViewController;
        controller.chosen = self.chosen;
    }
    if([segue.identifier isEqualToString:@"placesChosen"]){
        self.chosen = @"places";
        mainGame *controller = (mainGame *)segue.destinationViewController;
        controller.chosen = self.chosen;
    }
    if([segue.identifier isEqualToString:@"sportsChosen"]){
        self.chosen = @"sports";
        mainGame *controller = (mainGame *)segue.destinationViewController;
        controller.chosen = self.chosen;
    }
    if([segue.identifier isEqualToString:@"kidsChosen"]){
        self.chosen = @"kids";
        mainGame *controller = (mainGame *)segue.destinationViewController;
        controller.chosen = self.chosen;
    }
    if([segue.identifier isEqualToString:@"musicChosen"]){
        self.chosen = @"music";
        mainGame *controller = (mainGame *)segue.destinationViewController;
        controller.chosen = self.chosen;
    }
}

@end
