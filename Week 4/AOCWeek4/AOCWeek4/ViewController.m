//
//  ViewController.m
//  AOCWeek4
//
//  Created by James McPherson on 9/19/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0.6 blue:1 alpha:1]; /*#0099ff*/
    
    userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 10.0f, 90.0f, 20.0f)];
    // check if userNameLabel exists
    if (userNameLabel != nil) {
        userNameLabel.text = @"Username:";
        userNameLabel.backgroundColor = [UIColor colorWithRed:0 green:0.6 blue:1 alpha:1]; /*#0099ff*/
        //Display username Label
        [self.view addSubview:userNameLabel];
    }
    
    //display text box
    userNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 5.0f, 200.0f, 30.0f)];
    
    //check for text box existance
    if (userNameTextField != nil) {
        userNameTextField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview: userNameTextField];
    }
    
    //create login button
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //check for button existance
    if (loginButton != nil) {
        loginButton.tag = 0;
        loginButton.frame = CGRectMake(220.0f, 50.0f, 80.0f, 30.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    
    // Create a label that will display helpful information to user
    userPrompt = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 80.0f)];
    
    if (userPrompt != nil) {
        userPrompt.backgroundColor = [UIColor whiteColor];
        userPrompt.text = @"Please Enter Username";
        userPrompt.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:userPrompt];
    }
    
    //create a button for user to select and show the date
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //check for dateButton existance
    if (dateButton != nil) {
        dateButton.tag = 1;
        dateButton.frame = CGRectMake(110.0f, 225.0f, 100.0f, 30.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }
    
    //create info button that will display developer information
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    //check for infoButton existance
    if (infoButton != nil) {
        infoButton.tag = 2;
        infoButton.frame = CGRectMake(150.0f, 300.0f, 20.0f, 20.0f);
        [self.view addSubview:infoButton];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)onClick: (UIButton*) button
{
    //variable to grab user input from text field
    userText = [userNameTextField text];
    //variable to display name of user that has logged in.
    userName = [[NSString alloc] initWithFormat:@"User: %@ has been logged in.", userText];
    
    
    if (button.tag == 0) {
        if (userText == 0) {
            userPrompt.text = @"Username cannot be empty";
        } else {
            userPrompt.text = userName;
        }
    }
    else if (button.tag == 1)
    {
        alertView = [[UIAlertView alloc] initWithTitle:@"Today's Date" message:@"it works" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
}


@end
