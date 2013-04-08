//
//  ViewController.m
//  Final1
//
//  Created by webstudent on 2/13/13.
//  Copyright (c) 2013 webstudent. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize Text1;
@synthesize Text2;
@synthesize Text3;
@synthesize Text4;
@synthesize Text5;
@synthesize Text6;
@synthesize Text7;
@synthesize Text8;
@synthesize Text9;
@synthesize Text10;
@synthesize Text11;
@synthesize Text12;
@synthesize Text13;

UITextField *Text1;
UITextField *Text2;
UITextField *Text3;
UITextField *Text4;
UITextField *Text5;
UITextField *Text6;
UITextField *Text7;
UITextField *Text8;
UITextField *Text9;
UITextField *Text10;
UITextField *Text11;
UITextField *Text12;
UITextField *Text13;

float Total;
int Hamburger;
int CheeseBurger;
int BaconCheeseBurger;
int SmallFries;
int MediumFries;
int OnionRings;
int SmallDrink;
int MediumDrink;
int LargeDrink;



-(NSString *)documentsPath {
    NSArray *paths =
    NSSearchPathForDirectoriesInDomains(
                                        NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *documentsDir = [paths objectAtIndex:0];
    return documentsDir;
}

-(void) writeToFile:(NSString *) text
       withFileName:(NSString *) filePath {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [array addObject:text];
    [array writeToFile:filePath atomically:YES];
    [array release];
}

-(NSString *) readFromFile:(NSString *) filePath {
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        NSArray *array =
        [[NSArray alloc] initWithContentsOfFile: filePath];
        NSString *data =
        [NSString stringWithFormat:@"%@",
         [array objectAtIndex:0]];
        [array release];
        return data;
    }
    else
        return nil;
}



     
- (IBAction)Init1:(id)sender {
    if ([Text12.text isEqualToString:@"CIS"])
    {
    Hamburger = [Text11.text intValue];
    CheeseBurger = [Text2.text intValue];
    BaconCheeseBurger = [Text3.text intValue];
    
    SmallFries = [Text4.text intValue];
    MediumFries = [Text5.text intValue];
    OnionRings = [Text6.text intValue];
    
    SmallDrink = [Text7.text intValue];
    MediumDrink = [Text8.text intValue];
    LargeDrink = [Text9.text intValue];
    
        UIAlertView *alert =
        [[UIAlertView alloc] initWithTitle:@"Prices Updated."
                                   message:@"Prices Updated."
                                  delegate:self
                         cancelButtonTitle:@"Done"
                         otherButtonTitles:nil] ;
        [alert show];
        [alert release];
    
    }
    else {
        UIAlertView *alert =
        [[UIAlertView alloc] initWithTitle:@"Wrong Password"
                                   message:@"Wrong Password!"
                                  delegate:self
                         cancelButtonTitle:@"Done"
                         otherButtonTitles:nil] ;
        [alert show];
        [alert release];

    }
}

- (IBAction)Button1:(id)sender {
    Total = Total + Hamburger;
 }

- (IBAction)Button2:(id)sender {
    Total = Total + CheeseBurger;
}

- (IBAction)Button3:(id)sender {
    Total = Total + BaconCheeseBurger;
}

- (IBAction)Button4:(id)sender {
    Total = Total + SmallFries;
}

- (IBAction)Button5:(id)sender {
    Total = Total + MediumFries;
}

- (IBAction)Button6:(id)sender {
    Total = Total + OnionRings;
}

- (IBAction)Button7:(id)sender {
    Total = Total + SmallDrink;
}

- (IBAction)Button8:(id)sender {
    Total = Total + MediumDrink;
}

- (IBAction)Button9:(id)sender {
    Total = Total + LargeDrink;
}

- (IBAction)DispTotal:(id)sender {
    float Tax;
    Tax = [Text10.text floatValue];
    Total = Total + Tax*Total;
    NSString *strFromInt = [NSString stringWithFormat:@"%.2f",Total];
    UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle:@"Total"
                               message:strFromInt
                              delegate:self
                     cancelButtonTitle:@"Done"
                     otherButtonTitles:nil] ;
    [alert show];
    [alert release];
    
    Text1.text=[NSString stringWithFormat:@"%.2f",Total];
    
    NSString *fileName =
    [[self documentsPath] stringByAppendingPathComponent:@"data2.txt"];
    NSString *Email = [NSString stringWithFormat:@"%@", Text13.text];
 
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //uncomment to get the time only
    //[formatter setDateFormat:@"hh:mm a"];
    //[formatter setDateFormat:@"MMM dd, YYYY"];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    
    
    //get the date today
    NSString *dateToday = [formatter stringFromDate:[NSDate date]];
    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320.0f, 20.0f)];
//    [label setText:dateToday];
    [formatter release];
    
    
    strFromInt = [NSString stringWithFormat:@" %@ The CheeseBurger Place Buyer: %@ Total: $ %.2f", dateToday, Email, Total];
    
    [self writeToFile:strFromInt withFileName:fileName];
    
    NSString *fileContent = [self readFromFile:fileName];
    
    NSLog(@"%@", fileContent);
    
}



- (IBAction)InitToZero:(id)sender {
    Total = 0;
    NSString *strFromInt1 = [NSString stringWithFormat:@"%.2f",Total];
    Text1.Text = strFromInt1;
}
@end
