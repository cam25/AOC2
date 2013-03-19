//
//  ViewController.m
//  Week3App
//
//  Created by Cameron Mozie on 3/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
   
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)addEvent:(id)sender
//second view controller
{
    SecondViewController *newViewController = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    if (newViewController != nil) {
        newViewController.delegate = self;
        [self presentViewController:newViewController animated:TRUE completion:nil];
        
    }
}

-(void)DidClose:(NSString*)nameString closeDate:(NSString*)dateClose
{
    //delegate function 
    combinedStrings = [NSString stringWithFormat:@"\n Event: %@ \n Day Of Event: %@\n", nameString, dateClose];//sets strings of values passed to function to combined string and formats the text to show on textview
    textField.text =[textField.text stringByAppendingString:combinedStrings];//sets textField text to value of appended string combinedString
}

-(IBAction)timeChange:(id)sender
{
    UIDatePicker *datePick = (UIDatePicker*) sender;//date picker
    if (datePick != nil) {
        
    }
}

@end
