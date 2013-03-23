//
//  ViewController.m
//  week4App
//
//  Created by Cameron Mozie on 3/21/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"
#import "EventViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
   
    textField.text = @"Events Will Appear Here.";
    
    NSUserDefaults *savedEvents = [NSUserDefaults standardUserDefaults];
   
        NSString *stringFromView = [savedEvents objectForKey:@"Events"];
        textField.text = stringFromView;
       
    
    
    
   
    
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        EventViewController *newViewController = [[EventViewController alloc]initWithNibName:@"EventViewController" bundle:nil];
        if (newViewController != nil) {
            newViewController.delegate = self;//set delegate self
            [self presentViewController:newViewController animated:TRUE completion:nil];//second view call
            
        }
    }
   
}


-(IBAction)onSave:(id)sender
//second view controller
{
    NSString *textData = textField.text;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(defaults != nil){
        [defaults setObject:textData forKey:@"Events"];
        
        [defaults synchronize];
        NSLog(@"Saved");
    }
}

-(void)DidClose:(NSString*)eventString closeDate:(NSString*)dateString
{
    //delegate function
    
    
    if ([textField.text isEqualToString:@"Events Will Appear Here."]) {//if textfield text is equal to string
        textField.text = [NSString stringWithFormat:@"\n New Event: %@ \n Day Of Event: %@\n",eventString,dateString];//replaces placeholder text with saved events
        
    }else{//else append other events into text view
        textField.text = [textField.text stringByAppendingFormat:@"\n New Event: %@ \n Day Of Event: %@\n",eventString,dateString];
        
    }
    
}
-(IBAction)clearEvents:(id)sender
{
    
    textField.text = @"";
    textField.text = @"Events Will Appear Here.";
}


@end
