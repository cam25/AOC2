//
//  BaseTickets.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{//enum sets type to default at 0
    season,
    vip,
    group
    
}ticketEnum;


@interface BaseTickets : NSObject
{
    ticketEnum ticketEnum;
    
 
}

//properties / base data members to be used in subclasses

@property NSString *section;
@property float ticketCost;
@property float Tax;
@property int seats;
@property float ticketPricePerSeat;

//initialize
-(id)init;
//calculates tickets prices and/or used to manipulate total ticket prices.
-(void)calculateTotalTicketPrice;

@end
