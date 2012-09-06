//
//  ViewController.h
//  AOC1Week2
//
//  Created by James McPherson on 9/5/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Create UILabel, NSString, NSArray, and NSMtableString
{
    //UILabel Objects
    UILabel *bookTitle;
    UILabel *authorLabel;
    UILabel *authorName;
    UILabel *publishedLabel;
    UILabel *publishedText;
    UILabel *SummaryLabel;
    UILabel *SummaryText;
    
    //NSArray
    NSArray *bookTopics;
    
    //NSString
    NSString *topic1;
    NSString *topic2;
    NSString *topic3;
    NSString *topic4;
    NSString *topic5;
    
    //NSMutableString
    NSMutableString *topicText;
}

@end
