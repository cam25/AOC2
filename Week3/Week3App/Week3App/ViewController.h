//
//  ViewController.h
//  Week3App
//
//  Created by Cameron Mozie on 3/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface ViewController : UIViewController <SecondViewDelegate>
{
    IBOutlet UIButton *addEvents;
    IBOutlet UITextView *textField;
    NSString *combinedStrings;
}
-(IBAction)addEvent:(id)sender;


@end
