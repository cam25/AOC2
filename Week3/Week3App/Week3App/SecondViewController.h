//
//  SecondViewController.h
//  Week3App
//
//  Created by Cameron Mozie on 3/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SecondViewDelegate <NSObject>
@required
-(void)DidClose:(NSString*)eventString closeDate:(NSString*)dateString;//custon delegate

@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>//adds text field delegate to view control
{
    IBOutlet UIButton *saveBtn;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *textInfo;
    IBOutlet UIDatePicker *pickDate;
    NSDate *stringDate;
    NSString *finalString;
    
    id <SecondViewDelegate> delegate;
    
}
-(IBAction)timeChange:(id)sender;
-(IBAction)save:(id)sender;
-(IBAction)closeKeyboard:(id)sender;
-(IBAction)displayCloseKeyboardButn:(id)sender;
@property (strong) id <SecondViewDelegate> delegate;//property of custom delegate


@end

