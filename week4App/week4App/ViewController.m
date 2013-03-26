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
    

   
   [super viewDidLoad];
   
    NSUserDefaults *savedEvents = [NSUserDefaults standardUserDefaults];//user defaults from the savedEvents,loads default savedEvents into text view
    if (savedEvents != nil) {
        NSString *stringFromView = [savedEvents objectForKey:@"Events"];//creates an nssstring for the saved events object for key Events
        textField.text = stringFromView;//sets the textfield text to the events from the savedEventes object
    }
       
    if ([textField.text length] == 0) {//if textfield length is 0 then display the placeholder
        textField.text = @"Events Will Appear Here.";
    }
     
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];//initializes the right swipe gesture
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    
    //adds gesture recognizer to swipeLabel
    [swipeLabel addGestureRecognizer:rightSwiper];

    
    
  
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)// if the swipe is swiped to the right show second view controller
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
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];//creates defaults object for storing the defaults a
    if(defaults != nil){
        [defaults setObject:textData forKey:@"Events"];//stores text in the text view into user defaults
        
        [defaults synchronize];//saves to the default 
        UIAlertView *saved = [[UIAlertView alloc] initWithTitle:@"Saved" message:@"Your Event Was Saved To Storage!" delegate:nil cancelButtonTitle:@"Sweet" otherButtonTitles:nil, nil];
        [saved show];
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
    if ([sender tag] == 0) {//if clear button is clicked
        
        NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
        [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:appDomain];//clears everything in the UserDefaults
        
        textField.text = @"Events Will Appear Here.";//sets placeholder text back after defaults are cleared
        
    }
}


@end
