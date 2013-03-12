//
//  ViewController.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ticketFactory.h" //imports ticket factory
@class BaseTickets; //Base ticket class
@interface ViewController : UIViewController <UITextFieldDelegate>
{
 
    UILabel *label1;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *labelView;
    IBOutlet UIStepper *counter;
    IBOutlet UIButton *seasonTickButn;
    IBOutlet UIButton *vipTickButn;
    IBOutlet UIButton *groupTickButn;
    IBOutlet UIButton *calculateTickCost;
    IBOutlet UISegmentedControl *baseColor;
    IBOutlet UIButton *infoButton;
    IBOutlet UITextField *categoryInput;
    
    

}

-(IBAction)onClick:(id)sender;
-(IBAction)infoClick:(id)sender;
-(IBAction)onStepperClick:(id)sender;
-(IBAction)segmentChange:(id)sender;
@end
/*
 UILabel *header;
 BaseTickets *baseTickets;
 UILabel *seasonLabel;
 UILabel *seasonCalculation;
 UILabel *vipLabel;
 UILabel *vipCalculation;
 UILabel *groupLabel;
 UILabel *groupCalculation;
 */