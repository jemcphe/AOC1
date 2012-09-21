//
//  ViewController.h
//  AOCWeek4
//
//  Created by James McPherson on 9/19/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //Declaring all variables
    
    //Labels for project
    UILabel* userNameLabel;
    UILabel* userPrompt;
    UILabel* infoText;
    NSString* dateText;
    
    //Username text field
    UITextField* userNameTextField;
    
    //Button declarations
    UIButton* loginButton;
    UIButton* dateButton;
    UIButton* infoButton;
    
    //String declaration for user text
    NSString* userText;
    NSString* userName;
    
    
    //UIAlertView
    UIAlertView* alertView;
    
    //NSDate declarations
    NSDate* myDate;
    NSDateFormatter* dateFormatter;
}

- (void)onClick: (UIButton*) button;



@end
