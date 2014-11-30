//
//  PowerSelector.m
//  Custom
//
//  Created by Dov on 10/14/14.
//  Copyright (c) 2014 Yoni Goldstein. All rights reserved.
//

#import "PowerSelector.h"

@interface PowerSelector ()

@end

@implementation PowerSelector

- (IBAction)DeathPressed:(id)sender
{
    type = [NSString stringWithFormat:@"Death"];
    body.image = [UIImage imageNamed:@"Black.png"];
    description.text = [NSString stringWithFormat:@"Welcome to Satanism. You are the Angel of Death. Whether it be the Angel, or the Death, it is an extremely powerful role. Use it in good health. Er, what!?"];
    bodylabel.text = type;
}

- (IBAction)OzonePressed:(id)sender
{
    type = [NSString stringWithFormat:@"Ozone"];
    body.image = [UIImage imageNamed:@"Blue.png"];
    description.text = [NSString stringWithFormat:@"You should probably take this sitting down... KABOOM! The power of wind, explosions, and all that awesome stuff is in your hands. Now, incinerating your enemies is a breeze. A very powerful breeze."];
    bodylabel.text = type;
}

- (IBAction)TechPressed:(id)sender
{
    type = [NSString stringWithFormat:@"Tech"];
    body.image = [UIImage imageNamed:@"Yellow.png"];
    description.text = [NSString stringWithFormat:@"This is the Hi-Tech section. Really. We have some really advanced equipment like... Like guns, knives, lasers, etc. Oh, and we have smartphones with unlimited battery life. BOOYAH!"];
    bodylabel.text = type;
}

- (IBAction)NinjaPressed:(id)sender
{
    type = [NSString stringWithFormat:@"Ninja"];
    body.image = [UIImage imageNamed:@"Purple.png"];
    description.text = [NSString stringWithFormat:@"HIYA! Join the awesome group; become a Ninja! Lightning quick, rock solid, steel cold Ninja-moves will save the day!  KACHINK! YAAA! WHACK!"];
    bodylabel.text = type;
}

- (IBAction)VampirePressed:(id)sender
{
    type = [NSString stringWithFormat:@"Vampire"];
    body.image = [UIImage imageNamed:@"Red.png"];
    description.text = [NSString stringWithFormat:@"YOU VANT TO SUCK DAIR BLAAHD! We vampires prefer long-term, satisfying attacks. But it's not as mean as you think. We gain from their pain!"];
    bodylabel.text = type;
}

- (IBAction)ToxinPressed:(id)sender
{
    type = [NSString stringWithFormat:@"Toxin"];
    body.image = [UIImage imageNamed:@"Green.png"];
    description.text = [NSString stringWithFormat:@"We welcome you with open arms and a cup of poison - no, not for you to drink! Join now and you'll be giving the enemy a taste of their medicine in no time!"];
    bodylabel.text = type;
}


- (IBAction)AdminPressed:(id)sender
{
    type = [NSString stringWithFormat:@"Admin"];
    body.image = [UIImage imageNamed:@"Gear.png"];
    description.text = [NSString stringWithFormat:@"Your Geniusness, O Master of the Innerworkings, Coder of all Code, Super-Genius-God-Programmer-Person-Thing, we await your command, sire!"];
    bodylabel.text = type;
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
    body.image = [UIImage imageNamed:@"Grey.png"];
    
    [super viewDidLoad];
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

- (IBAction)DPressed:(id)sender {
}
@end
