//
//  ViewController.h
//  Week3App
//
//  Created by Cameron Mozie on 3/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UIButton *addEvents;
    IBOutlet UITextField *textField;
}
-(IBAction)addEvent:(id)sender;


@end
