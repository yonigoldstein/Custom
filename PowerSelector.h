//
//  PowerSelector.h
//  Custom
//
//  Created by Dov on 10/14/14.
//  Copyright (c) 2014 Yoni Goldstein. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *type;

@interface PowerSelector : UIViewController
{
    IBOutlet UIImageView *body;
    IBOutlet UILabel *description;
    IBOutlet UILabel *bodylabel;
}

-(IBAction)DeathPressed:(id)sender;
-(IBAction)OzonePressed:(id)sender;
-(IBAction)TechPressed:(id)sender;
-(IBAction)NinjaPressed:(id)sender;
-(IBAction)VampirePressed:(id)sender;
-(IBAction)ToxinPressed:(id)sender;

-(IBAction)AdminPressed:(id)sender;

@end
