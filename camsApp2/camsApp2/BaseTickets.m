//
//  BaseTickets.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "BaseTickets.h"

@implementation BaseTickets 
//synthesize creats getters/setter methods for each property
@synthesize section, seats, ticketCost, Tax, ticketPricePerSeat;


//initializes base and creates instance and sets ticket price section tax and seats to nil or 0.
    -(id)init
    {
        self = [super init];
        if (self !=nil)
        {
            [self setTicketPricePerSeat:0];
            [self setSection:nil];
            [self setTax:0];
            [self setSeats:0];
            
        }
        return self;
    }
//calulation method for 
-(void)calculateTotalTicketPrice {
    NSLog(@"this is ticket price %f",ticketPricePerSeat);
}

@end
