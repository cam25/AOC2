//
//  BaseTickets.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface BaseTickets : NSObject
{
    int ticketEnum;
 
}

typedef enum{
    seasonTickets,
    vipTickets,
    groupTickets
    
}ticketEnum;

@property NSString *section;
@property float ticketCost;
@property float fee;
@property int seatLocation;
@property float ticketPrice;

-(id)init;

-(void)calculateTotalTicketPrice;

@end
