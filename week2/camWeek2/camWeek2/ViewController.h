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
@interface ViewController : UIViewController
{
    UILabel *header;
    BaseTickets *baseTickets;
    UILabel *seasonLabel;
    UILabel *seasonCalculation;
    UILabel *vipLabel;
    UILabel *vipCalculation;
    UILabel *groupLabel;
    UILabel *groupCalculation;
    
}
@end
