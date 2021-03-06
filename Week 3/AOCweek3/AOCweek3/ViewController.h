//
//  ViewController.h
//  AOCweek3
//
//  Created by James McPherson on 9/12/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{    
    NSNumber* returnedInt;
    
    BOOL compareResult;
    BOOL comparison;
    
    NSString* messageText;
    NSString* displayIntWithString;
    NSString* comparisonText;
    
    NSMutableString* newString;
    
    UIAlertView* myAlert;
}

- (int)add:(int)num1 num2:(int)num2;

- (BOOL)compare:(NSInteger)num3 num4:(NSInteger)num4;

- (NSString*)append:(NSString*)string1 string2:(NSString*)string2;

- (void)displayAlertWithString:(NSString*)alertText;
@end
