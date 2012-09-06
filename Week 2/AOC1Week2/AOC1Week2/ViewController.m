//
//  ViewController.m
//  AOC1Week2
//
//  Created by James McPherson on 9/5/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Begin Week 2 code
    
    //Change Background Color
    self.view.backgroundColor = [UIColor colorWithRed:0.027 green:0.302 blue:0.482 alpha:1]; /*#074d7b*/
    
    //Create bookTitle, allocate, and set properties
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 40.0f)];
    [self.view addSubview:bookTitle];
    
    //Create authorLabel, allocate, and set properties
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 50.0f, 105.0f, 30.0f)];
    [self.view addSubview:authorLabel];
    
    //Create authorLabelText, allocate, and set properties
    authorLabelText = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 50.0f, 185.0f, 30.0f)];
    [self.view addSubview:authorLabelText];
    
    //Create publishedLabel, allocate, and set properties
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 90.0f, 105.0f, 30.0f)];
    [self.view addSubview:publishedLabel];
    
    //Create publishedText, allocate, and set properties
    publishedText = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 90.0f, 185.0f, 30.0f)];
    [self.view addSubview:publishedText];
    
    //Create summaryLabel, allocate, and set properties
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 130.0f, 105.0f, 30.0f)];
    [self.view addSubview:summaryLabel];
    
    //Create summaryText, allocate, and set properties
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 160.00, 300.0f, 30.0f)];
    [self.view addSubview:summaryText];
    
    //Create topicsLabel, allocate, and set properties
    topicLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 270.0f, 105.0f, 30.0f)];
    [self.view addSubview:topicLabel];
    
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

@end
