//
//  seasonTickets.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "seasonTickets.h"

@implementation seasonTickets
@synthesize seasonTicksPrice, tax, goldMemberPrice, numberOfSeats;
-(id)init
{
    self = [super init];
    if (self != nil) {
        [self setSeasonTicksPrice:5203];
        [self setGoldMemberPrice:4200.00];
        [self setNumberOfSeats:1];
        [self setTax:30.00];
        
        
    }
    return self;
};

-(void)calculateTotalTicketPrice
{
    [self setSeasonTicksPrice:(goldMemberPrice + tax) ];
     NSLog(@"gold member season tickets are %d", self.seasonTicksPrice);
}
@end
