//
//  BalanceSelector.h
//  Custom
//
//  Created by Dov on 10/14/14.
//  Copyright (c) 2014 Yoni Goldstein. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *name;

NSInteger *First;
NSInteger *Second;
NSInteger *Third;

NSTimer *pointUpdater;

@interface BalanceSelector : UIViewController
{
    IBOutlet UILabel *pointsLabel;
    
    IBOutlet UIStepper *FirstStepper;
    IBOutlet UILabel *FirstLabel;
    
    IBOutlet UIStepper *SecondStepper;
    IBOutlet UILabel *SecondLabel;
    
    IBOutlet UIStepper *ThirdStepper;
    IBOutlet UILabel *ThirdLabel;
    IBOutlet UITextField *nameField;
    
    IBOutlet UILabel *typeLabel;
}

-(void)pointUpdate;

-(IBAction)FirstStep:(id)sender;
-(IBAction)SecondStep:(id)sender;
-(IBAction)ThirdStep:(id)sender;

-(IBAction)nameChanged:(id)sender;

@end
