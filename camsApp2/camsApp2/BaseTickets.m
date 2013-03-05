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
            [self setTicketPrice:nil];
            [self setFee:nil]
            [self setSeatLocation:0];
            
        }
        return self;
    }
-(void)calculateTotalTicketPrice {
    [self setTicketPrice:ticketCost + fee];
}

@end
