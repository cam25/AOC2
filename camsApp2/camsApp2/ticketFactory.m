//
//  ticketFactory.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/5/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ticketFactory.h"

@implementation ticketFactory
+(BaseTickets *)buyNewTicket: (int)ticketType
{
    return [[seasonTickets alloc]init];
}
@end
