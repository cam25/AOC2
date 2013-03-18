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
-(void)DidClose:(NSString*)nameString closeDate:(NSString*)dateClose;

@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UIButton *saveBtn;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *textInfo;
    IBOutlet UIDatePicker *pickDate;
    id <SecondViewDelegate> delegate;
    
}
-(IBAction)timeChange:(id)sender;
-(IBAction)save:(id)sender;
-(IBAction)closeKeyboard:(id)sender;

@property (strong) id <SecondViewDelegate> delegate;
@end

