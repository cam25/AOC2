//
//  seasonTickets.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "seasonTickets.h"


@implementation seasonTickets
@synthesize firstTimeBuyerPrice , firstTimeBuyerDiscount;
-(id)init
{
    self = [super init];
    if (self != nil) {
        //sets values to my properties
        [self setSeats:2];
        [self setTicketPricePerSeat:5200];
        [self setFirstTimeBuyerPrice:4400];
        [self setFirstTimeBuyerDiscount:800];
        [self setSection:@"Floor"];
        
        
        
        
    }
    return self;
};
//calculation method for manipulation of values
-(void)calculateTotalTicketPrice
{
  
    NSLog(@"ticket price is %.2f", self.totalPriceForSeasonTickets);
    [self setTotalPriceForSeasonTickets:( firstTimeBuyerPrice - firstTimeBuyerDiscount * seats ) ];//sets totalPriceForTickets to the value of the added values
     NSLog(@" season tickets are %.2f", self.totalPriceForSeasonTickets);
}
@end
