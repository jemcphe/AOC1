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
    if (bookTitle != nil) {
        bookTitle.backgroundColor = [UIColor colorWithRed:0.576 green:0.608 blue:0.627 alpha:1]; /*#939ba0*/
        bookTitle.text = @"How I Play Golf";
        bookTitle.textColor = [UIColor whiteColor];
        bookTitle.textAlignment = UITextAlignmentCenter;
    }
    
    [self.view addSubview:bookTitle];
    
    //Create authorLabel, allocate, and set properties
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 50.0f, 105.0f, 30.0f)];
    if(authorLabel != nil) {
        authorLabel.backgroundColor = [UIColor colorWithRed:0.369 green:0.663 blue:0.859 alpha:1]; /*#5ea9db*/
        authorLabel.text = @"Author:";
        authorLabel.textColor = [UIColor blackColor];
        authorLabel.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview:authorLabel];
    
    //Create authorLabelText, allocate, and set properties
    authorLabelText = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 50.0f, 185.0f, 30.0f)];
    if (authorLabelText != nil) {
        authorLabelText.backgroundColor = [UIColor colorWithRed:0.651 green:0.784 blue:0.875 alpha:1]; /*#a6c8df*/
        authorLabelText.text = @"Tiger Woods";
        authorLabelText.textColor = [UIColor colorWithRed:0 green:0.2 blue:1 alpha:1]; /*#0033ff*/
        authorLabelText.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:authorLabelText];
    
    //Create publishedLabel, allocate, and set properties
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 90.0f, 105.0f, 30.0f)];
    if (publishedLabel != nil) {
        publishedLabel.backgroundColor = [UIColor colorWithRed:0.125 green:0.933 blue:0.353 alpha:1]; /*#20ee5a*/
        publishedLabel.text = @"Published:";
        publishedLabel.textColor = [UIColor redColor];
        publishedLabel.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview:publishedLabel];
    
    //Create publishedText, allocate, and set properties
    publishedText = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 90.0f, 185.0f, 30.0f)];
    if (publishedText != nil) {
        publishedText.backgroundColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:1]; /*#00ffff*/
        publishedText.text = @"April 8, 2011";
        publishedText.textColor = [UIColor colorWithRed:1 green:0 blue:0.6 alpha:1]; /*#ff0099*/
        publishedText.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:publishedText];
    
    //Create summaryLabel, allocate, and set properties
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 130.0f, 105.0f, 30.0f)];
    if (summaryLabel != nil) {
        summaryLabel.backgroundColor = [UIColor colorWithRed:0.8 green:1 blue:0.2 alpha:1]; /*#ccff33*/
        summaryLabel.text = @"Summary";
        summaryLabel.textColor = [UIColor colorWithRed:0.02 green:0.38 blue:0.106 alpha:1]; /*#05611b*/
        summaryLabel.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:summaryLabel];
    
    //Create summaryText, allocate, and set properties
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 160.00, 300.0f, 150.0f)];
    if (summaryText != nil) {
        summaryText.backgroundColor = [UIColor colorWithRed:1 green:0.2 blue:1 alpha:1]; /*#ff33ff*/
        summaryText.text = @"This is Tiger Wood's book on how he plays the game of golf.  He makes it very clear that this is how he learned to play golf and encourages his readers not to emulate, but rather take bits and peices to make their own game effective.";
        summaryText.textColor = [UIColor colorWithRed:1 green:1 blue:0 alpha:1]; /*#ffff00*/
        summaryText.textAlignment = UITextAlignmentLeft;
        summaryText.numberOfLines = 10;
    }
    [self.view addSubview:summaryText];
    
    //Create topicsLabel, allocate, and set properties
    topicLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 320.0f, 105.0f, 30.0f)];
    if (topicLabel != nil) {
        topicLabel.backgroundColor = [UIColor colorWithRed:0.933 green:0.314 blue:0.169 alpha:1]; /*#ee502b*/
        topicLabel.text = @"Book Topics";
        topicLabel.textColor = [UIColor colorWithRed:0.102 green:0.871 blue:0.871 alpha:1]; /*#1adede*/
        topicLabel.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:topicLabel];
    
    //Create topics (from the book) that will be used in NSArray
    topic1 = [[NSString alloc] initWithString:@"Driving"];
    topic2 = [[NSString alloc] initWithString:@"Irons"];
    topic3 = [[NSString alloc] initWithString:@"Chipping"];
    topic4 = [[NSString alloc] initWithString:@"Putting"];
    topic5 = [[NSString alloc] initWithString:@"Mentality"];
    
    //Create an array and fill it with objects
    bookTopics = [[NSArray alloc] initWithObjects:topic1, topic2, topic3, topic4, topic5, nil];
    NSLog(@"%@", [bookTopics description]);
    
    //Create NSMutableString, allocate, create loop to iterate through NSArray (bookTopics) and append topics to NSMutableString
    topics = [[NSMutableString alloc] initWithCapacity:5];
    
    for (int i = 0; i < bookTopics.count; i++) {
        [topics appendString:[bookTopics objectAtIndex: i]];
        if (i < bookTopics.count -1) {
            [topics appendString: @", "];
        }
    }
    
    topicLabelText = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 350.0f, 300.0f, 75.0f)];
    if (topicLabelText != nil) {
        topicLabelText.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0.4 alpha:1]; /*#ff0066*/
        topicLabelText.text = topics;
        topicLabelText.textColor = [UIColor colorWithRed:0.424 green:0.918 blue:0.922 alpha:1]; /*#6ceaeb*/
        topicLabelText.textAlignment = UITextAlignmentCenter;
        topicLabelText.numberOfLines = 2;
    }
    [self.view addSubview:topicLabelText];
    
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
