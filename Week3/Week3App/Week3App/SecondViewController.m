//
//  SecondViewController.m
//  Week3App
//
//  Created by Cameron Mozie on 3/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize delegate;//delegate

-(IBAction)timeChange:(id)sender
{

 
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    closeKeyboard.hidden = YES;//hides keyboard
    saveBtn.hidden = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(displayCloseKeyboardButn:) name:UIKeyboardWillShowNotification object:nil];//displays keyboard and calls displayCloseKeyboardButn which shows close key butn
    pickDate.minimumDate = [NSDate date];//set minimum date for date picker to current day
 
    NSLog(@"%@", pickDate.minimumDate);
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)save:(id)sender
{
    
   
    if ([sender tag] == 0) {// if saveButn is clicked
        
        
         BOOL emptyField = [textInfo.text isEqual:@""];//creates bool variable to hold the value of the text field text to an empty string
      
        if (emptyField == NO) {//if text field is not empty then create strings of date and event
            
            NSString *tempString = textInfo.text;//sets temp string to value of text in text field
            NSLog(@"%@", tempString);
            stringDate = pickDate.date;//sets the date picker date to string date
            
            NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
            [formatDate setDateFormat:@"EEE, MMM d, yyyy hh:mm a zzz"];//formats date to weekday, month, day,year,time 
            finalString = [formatDate stringFromDate:stringDate];//stringifies the date from picker
        NSLog(@"%@",finalString);
            
          
            [delegate DidClose:tempString closeDate:finalString];//passing of values from text field and date to delegate
            [self dismissViewControllerAnimated:true completion:nil];//returns to inital screen

        }
        
        if (emptyField == YES) {//if field is empty show alert
            UIAlertView *noTextError = [[UIAlertView alloc] initWithTitle:@"No Event Entered" message:@"Please Enter an Event and Date" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            if (noTextError != nil) {
                [noTextError show];
            }
        }       
    }
  
}

-(IBAction)displayCloseKeyboardButn:(id)sender
{
    closeKeyboard.hidden = NO;//displays keyboard button
    saveBtn.hidden = NO;//displays save butn
}

-(IBAction)closeKeyboard:(id)sender
{
    [textInfo resignFirstResponder];//closes keyboard
    
}
@end
