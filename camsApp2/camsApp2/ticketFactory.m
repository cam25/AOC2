//
//  ticketFactory.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/5/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ticketFactory.h"

@implementation ticketFactory

//class method function
+(BaseTickets *)buyNewTicket: (int)ticketType
{
    //conditionals for ticket type categories 
    if (ticketType == season) { //if ticket type == season initialize seasonTickets
        return [[seasonTickets alloc]init];
    }else if (ticketType == vip)
        return [[vipTickets alloc]init];
else if (ticketType == group)
        return [[groupTickets alloc]init];
else return nil;

}
@end
