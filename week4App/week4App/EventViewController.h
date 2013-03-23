//
//  EventViewController.h
//  week4App
//
//  Created by Cameron Mozie on 3/21/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EventViewDelegate <NSObject>
@required
-(void)DidClose:(NSString*)eventString closeDate:(NSString*)dateString;//custon delegate

@end

@interface EventViewController : UIViewController <UITextFieldDelegate>//adds text field delegate to view control
{
    IBOutlet UIButton *saveBtn;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *textInfo;
    IBOutlet UIDatePicker *pickDate;
    NSDate *stringDate;
    NSString *finalString;
    UISwipeGestureRecognizer *leftSwiper;
    IBOutlet UILabel *swipeLeftLabel;
    
    id <EventViewDelegate> delegate;
    
}
-(IBAction)timeChange:(id)sender;
-(IBAction)save:(id)sender;
-(IBAction)closeKeyboard:(id)sender;
-(IBAction)displayCloseKeyboardButn:(id)sender;
@property (strong) id <EventViewDelegate> delegate;//property of custom delegate

@end
