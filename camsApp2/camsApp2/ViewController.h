//
//  ViewController.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ticketFactory.h"
@class BaseTickets;
@interface ViewController : UIViewController
{
    UILabel *header;
    BaseTickets *baseTickets;
    UILabel *seasonLabel;
    UILabel *seasonCalculation;
    
}
@end
