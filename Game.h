//
//  Game.h
//  Custom
//
//  Created by Dov on 10/18/14.
//  Copyright (c) 2014 Yoni Goldstein. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *EnemyType;

int LifeOne;
int LifeTwo;

int Num;

@interface Game : UIViewController
{
    IBOutlet UIButton *FirstAttack;
    IBOutlet UIButton *SecondAttack;
    IBOutlet UIButton *ThirdAttack;
    IBOutlet UIButton *FourthAttack;
    
    IBOutlet UILabel *LabelOne;
    IBOutlet UILabel *LabelTwo;
    
    IBOutlet UIImageView *ImageOne;
    IBOutlet UIImageView *ImageTwo;
}

-(IBAction)FirstPressed:(id)sender;
-(IBAction)SecondPressed:(id)sender;
-(IBAction)ThirdPressed:(id)sender;
-(IBAction)FourthPressed:(id)sender;

@end
