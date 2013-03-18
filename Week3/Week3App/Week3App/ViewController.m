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
{
    SecondViewController *newViewController = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    if (newViewController != nil) {
        newViewController.delegate = self;
        [self presentViewController:newViewController animated:TRUE completion:nil];
        
    }
}

-(void)DidClose:(NSString*)nameString closeDate:(NSString*)dateClose
{
    combinedStrings = [NSString stringWithFormat:@"\n %@ due on \n %@\n", nameString, dateClose];
    textField.text =[textField.text stringByAppendingString:combinedStrings];
}

-(IBAction)timeChange:(id)sender
{
    UIDatePicker *datePick = (UIDatePicker*) sender;
    if (datePick != nil) {
        
    }
}

@end
