//
//  ViewController.h
//  week4App
//
//  Created by Cameron Mozie on 3/21/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventViewController.h"
@interface ViewController : UIViewController <EventViewDelegate>
{
    
        IBOutlet UIButton *addEvents;
        IBOutlet UITextView *textField;
        NSString *combinedStrings;
}
-(IBAction)addEvent:(id)sender;

@end
