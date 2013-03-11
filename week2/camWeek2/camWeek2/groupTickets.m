//
//  groupTickets.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "groupTickets.h"

@implementation groupTickets

@synthesize ticketPricePerSeat, Tax, section, partyOfFive,partyOfTen;

-(id)init
{
    self = [super init];
    if (self !=nil) {
        //sets values to properties
        [self setSection:@"booth"];
        [self setTicketPricePerSeat:150.00];
        [self setTax:24.33];
        [self setPartyOfFive:YES];
        
    }
    return self;
    
    
}
-(void)calculateTotalTicketPrice{
    
    if (partyOfFive == YES) {
        [self setTotalPriceOfGroupTickets:(ticketPricePerSeat * 5 + Tax)];
        NSLog(@"%f is total for group tickets for 5 people", self.totalPriceOfGroupTickets);
    }
    
}
@end
