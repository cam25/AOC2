//
//  seasonTickets.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "seasonTickets.h"

@implementation seasonTickets
@synthesize numberOfSeats, section, Tax, ticketPricePerSeat, ticketCost;
-(id)init
{
    self = [super init];
    if (self != nil) {
        //sets values to my properties
        [self setNumberOfSeats:2];
        [self setTicketPricePerSeat:5200.00];
        [self setTax:30.00];
        [self setSection:@"Floor"];
        
        
    }
    return self;
};
//calculation method for manipulation of values
-(void)calculateTotalTicketPrice
{
    NSLog(@"ticket price is %.2f", self.ticketPricePerSeat);
    [self setTotalPriceForTickets:(ticketPricePerSeat + Tax) ];
     NSLog(@" season tickets are %f", self.totalPriceForTickets);
}
@end
