//
//  SecondViewController.m
//  Week3App
//
//  Created by Cameron Mozie on 3/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize delegate;


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
    
    if ([sender tag] == 0) {
        
      
            
            NSString *tempString = textInfo.text;
            NSLog(@"%@", tempString);
            stringDate = pickDate.date;
            NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
            [formatDate setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
            finalString = [formatDate stringFromDate:stringDate];
        NSLog(@"%@",finalString);
        
        
       
            [delegate DidClose:tempString closeDate:finalString];
        [self dismissViewControllerAnimated:true completion:nil];
    }
        
    
}
-(IBAction)closeKeyboard:(id)sender
{
    [textInfo resignFirstResponder];
    
}
@end
