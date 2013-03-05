//
//  seasonTickets.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseTickets.h"
@interface seasonTickets : BaseTickets


@property int numberOfSeats;


-(void)calculateTotalTicketPrice;
@end
