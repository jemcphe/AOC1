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
    BOOL compareResult = NO;
    
    if (num3 == num4) {
        compareResult = YES;
    }
    
    return compareResult;
}

@end
