//
//  BaseTickets.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "BaseTickets.h"

@implementation BaseTickets 

@synthesize seatLocation, section, ticketCost, fee, ticketPrice;

    -(id)init
    {
        self = [super init];
        if (self !=nil)
        {
            [self setTicketPrice:0];
            [self setFee:0];
            [self setSeatLocation:nil];
            
        }
        return self;
    }
-(void)calculateTotalTicketPrice {
    NSLog(@"this is ticket price %f",ticketPrice);
}

@end
