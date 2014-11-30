//
//  BalanceSelector.m
//  Custom
//
//  Created by Dov on 10/14/14.
//  Copyright (c) 2014 Yoni Goldstein. All rights reserved.
//

#import "BalanceSelector.h"
#import "PowerSelector.h"

@interface BalanceSelector ()

@end

@implementation BalanceSelector

- (void)pointUpdate
{
    pointsLabel.text = [NSString stringWithFormat:@"Points Remaining: %i", 30 - ((int)FirstStepper.value + (int)SecondStepper.value + (int)ThirdStepper.value)];
}

- (IBAction)FirstStep:(id)sender
{
    if (FirstStepper.value + SecondStepper.value + ThirdStepper.value > 30 || FirstStepper.value > 15) {
        FirstStepper.value = FirstStepper.value - 1;
        if (FirstStepper.value == 15) {
            FirstLabel.text = [NSString stringWithFormat:@"Life: 15 (Max.)"];
        }
    }
    FirstLabel.text = [NSString stringWithFormat:@"Life: %i", (int)FirstStepper.value];
    [[NSUserDefaults standardUserDefaults] setInteger:(int)FirstStepper.value forKey:@"First"];
}

- (IBAction)SecondStep:(id)sender
{
    if (FirstStepper.value + SecondStepper.value + ThirdStepper.value > 30) {
        SecondStepper.value = SecondStepper.value - 1;
    }
    SecondLabel.text = [NSString stringWithFormat:@"Stamina: %i", (int)SecondStepper.value];
    [[NSUserDefaults standardUserDefaults] setInteger:(int)SecondStepper.value forKey:@"Second"];
}

- (IBAction)ThirdStep:(id)sender
{
    if (FirstStepper.value + SecondStepper.value + ThirdStepper.value > 30) {
        ThirdStepper.value = ThirdStepper.value - 1;
    }
    ThirdLabel.text = [NSString stringWithFormat:@"Strength: %i", (int)ThirdStepper.value];
    [[NSUserDefaults standardUserDefaults] setInteger:(int)ThirdStepper.value forKey:@"Third"];
}

- (IBAction)nameChanged:(id)sender
{
    name = nameField.text;
    [nameField resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [nameField resignFirstResponder];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
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
    
    //Create timer that updates pointsLabel.
    pointUpdater = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(pointUpdate) userInfo:nil repeats:YES];
    
    [nameField setDelegate:self];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    typeLabel.text = [NSString stringWithFormat:@"Type: %@", type];
    

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
