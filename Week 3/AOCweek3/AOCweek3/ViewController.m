//
//  ViewController.m
//  AOCweek3
//
//  Created by James McPherson on 9/12/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //messageText calls the append function and is used to start program
    messageText = [self append:@"Hey, I'm an Alert Message!! " string2:@"Just press OK to move on"];
    
    // Create variable that declares int values, NSNumber object that holds int values, and NSString to
    // display the data to the user... this will pay displayed by calling displayAlertWithString Function.
    int addFunctionResult = [self add:10 num2:5];
    returnedInt = [[NSNumber alloc] initWithInt:addFunctionResult];
    displayIntWithString = [[NSString alloc] initWithFormat:@"The number is %@", returnedInt];
    
    //These are the numbers used for the comparison Function
    int number1 = 23;
    int number2 = 25;
    
    //comparison will call the compare function, take 2 numbers and comparisonText will pass into
    //displayAlertWithString function to present to user.
    comparison = [self compare:number1 num4:number2];
    comparisonText = [[NSString alloc] initWithFormat:@"The numbers compared are %d and %d and the result is %@", number1, number2, comparison ? @"YES":@"NO"];
    
    //Use displayAlertWithString function to display the message to user
    [self displayAlertWithString:messageText];
    [self displayAlertWithString:displayIntWithString];
    [self displayAlertWithString:comparisonText];
    
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

//creating append function
- (NSString*)append:(NSString*)string1 string2:(NSString*)string2
{
    newString = [[NSMutableString alloc] initWithString:string1];
    [newString appendString:string2];
    
    return newString;
}

//creating add function
- (int)add:(int)num1 num2:(int)num2
{
    //define what is to be returned from this function
    return num1 + num2;
};

//creating BOOL to compare
- (BOOL)compare:(NSInteger)num3 num4:(NSInteger)num4
{
    // set compareResult equal to NO, then use if statement to check if arguments equal each other.  If they do
    // set compareResult equal to YES... Return compareResult.
    compareResult = NO;
    
    if (num3 == num4) {
        compareResult = YES;
    }
    
    return compareResult;
}

//create a function that creates an alert box and displays a message to the user.
- (void)displayAlertWithString:(NSString*)alertText
{
    myAlert = [[UIAlertView alloc] initWithTitle:@"Alert Box" message:alertText delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [myAlert show];
}





@end
