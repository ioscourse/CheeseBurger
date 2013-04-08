//
//  ViewController.h
//  Final1
//
//  Created by webstudent on 2/13/13.
//  Copyright (c) 2013 webstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)Button1:(id)sender;
- (IBAction)Button2:(id)sender;

- (IBAction)Button3:(id)sender;
- (IBAction)Button4:(id)sender;

- (IBAction)Button5:(id)sender;
- (IBAction)Button6:(id)sender;

- (IBAction)Button7:(id)sender;
- (IBAction)Button8:(id)sender;
- (IBAction)Button9:(id)sender;

- (IBAction)DispTotal:(id)sender;
- (IBAction)Init1:(id) sender;

-(NSString *) documentsPath;
-(NSString *) readFromFile:(NSString *) filePath;
-(void) writeToFile:(NSString *) text
       withFileName:(NSString *) filePath;

@property(nonatomic, retain) IBOutlet UITextField *Text1;
@property(nonatomic, retain) IBOutlet UITextField *Text11;
@property(nonatomic, retain) IBOutlet UITextField *Text2;
@property(nonatomic, retain) IBOutlet UITextField *Text3;
@property(nonatomic, retain) IBOutlet UITextField *Text4;
@property(nonatomic, retain) IBOutlet UITextField *Text5;
@property(nonatomic, retain) IBOutlet UITextField *Text6;
@property(nonatomic, retain) IBOutlet UITextField *Text7;
@property(nonatomic, retain) IBOutlet UITextField *Text8;
@property(nonatomic, retain) IBOutlet UITextField *Text9;
@property(nonatomic, retain) IBOutlet UITextField *Text10;
@property(nonatomic, retain) IBOutlet UITextField *Text12;
@property(nonatomic, retain) IBOutlet UITextField *Text13;
@end

