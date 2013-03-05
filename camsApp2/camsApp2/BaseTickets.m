//
//  BaseTickets.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "BaseTickets.h"

@implementation BaseTickets 

@synthesize section, seats, ticketCost, Tax, ticketPricePerSeat;

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
-(void)calculateTotalTicketPrice {
    NSLog(@"this is ticket price %f",ticketPricePerSeat);
}

@end
