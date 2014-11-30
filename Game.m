//
//  Game.m
//  Custom
//
//  Created by Dov on 10/18/14.
//  Copyright (c) 2014 Yoni Goldstein. All rights reserved.
//

#import "Game.h"

#import "PowerSelector.h"
#import "BalanceSelector.h"
#import <AVFoundation/AVFoundation.h>

@interface Game ()
{
    AVAudioPlayer *_testOne;
}

@end

@implementation Game

-(IBAction)FirstPressed:(id)sender
{
    LabelOne.text = @"Kaboo, FP.";
    [_testOne play];
}

-(IBAction)SecondPressed:(id)sender
{
    
}

-(IBAction)ThirdPressed:(id)sender
{
    
}

-(IBAction)FourthPressed:(id)sender
{
    
}

- (void)generate
{
    /*
     This next Switch gets a random number 0-5 each of which represent the Six Character Types, accordingly.
     
     Each number will have different customizations to the Information Grid needed - For example:
        
            If the number evaluates to 3 (Ninja), Stamina must increment by 10.
            
     I just realized: only 0, 3, and 4 need Generation changes...
     
     AHA! ImageTwo depends on this randomization! -- Note to Self: Generate must put in ImageOne!
     
     */
    
    
    switch (arc4random()%6) {
        case 0:
            EnemyType = @"Death";
            ImageTwo.image = [UIImage imageNamed:@"Black.png"];
            break;
        case 1:
            EnemyType = @"Ozone";
            ImageTwo.image = [UIImage imageNamed:@"Blue.png"];
            break;
        case 2:
            EnemyType = @"Tech";
            ImageTwo.image = [UIImage imageNamed:@"Yellow.png"];
            break;
        case 3:
            EnemyType = @"Ninja";
            ImageTwo.image = [UIImage imageNamed:@"Purple.png"];
            break;
        case 4:
            EnemyType = @"Vampire";
            ImageTwo.image = [UIImage imageNamed:@"Red.png"];
            break;
        case 5:
            EnemyType = @"Toxin";
            ImageTwo.image = [UIImage imageNamed:@"Green.png"];
            break;
        default:
            break;
    }
    
    //In the following if/else_if tangle, we deal with Character 1 (The Player).
    
    if ([type  isEqual: @"Death"]) {
        ImageOne.image = [UIImage imageNamed:@"Black.png"];
    }
    else if ([type  isEqual: @"Ozone"]) {
        ImageOne.image = [UIImage imageNamed:@"Blue.png"];
    }
    else if ([type  isEqual: @"Tech"]) {
        ImageOne.image = [UIImage imageNamed:@"Yellow.png"];
    }
    else if ([type  isEqual: @"Ninja"]) {
        ImageOne.image = [UIImage imageNamed:@"Purple.png"];
    }
    else if ([type  isEqual: @"Vampire"]) {
        ImageOne.image = [UIImage imageNamed:@"Red.png"];
    }
    if ([type  isEqual: @"Toxin"]) {
        ImageOne.image = [UIImage imageNamed:@"Green.png"];
    }
    
    NSLog(@"Generated!");
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSString *testPath = [NSString stringWithFormat:@"%@/testOne.m4a", [[NSBundle mainBundle] resourcePath]];
    NSURL *testUrl = [NSURL fileURLWithPath:testPath];
    
    _testOne = [[AVAudioPlayer alloc] initWithContentsOfURL:testUrl error:nil];
    
    [self generate];
    [super viewDidLoad];
    [pointUpdater invalidate];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
