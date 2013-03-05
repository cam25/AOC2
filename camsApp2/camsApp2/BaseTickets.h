//
//  BaseTickets.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    season,
    vip,
    group
    
}ticketEnum;


@interface BaseTickets : NSObject
{
    ticketEnum ticketEnum;
    
 
}



@property NSString *section;
@property float ticketCost;
@property float Tax;
@property int seats;
@property float ticketPricePerSeat;

-(id)init;

-(void)calculateTotalTicketPrice;

@end
