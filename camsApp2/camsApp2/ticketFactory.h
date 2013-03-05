//
//  ticketFactory.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/5/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseTickets.h"
#import "seasonTickets.h"
#import "vipTickets.h"
#import "groupTickets.h"

@interface ticketFactory : NSObject
+(BaseTickets *)buyNewTicket: (int)ticketType;
@end
