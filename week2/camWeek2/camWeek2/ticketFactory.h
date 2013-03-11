//
//  ticketFactory.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/5/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseTickets.h" //allows access to base
#import "seasonTickets.h"//allows access to season
#import "vipTickets.h"//allows access to vip
#import "groupTickets.h"//allows access to group

@interface ticketFactory : NSObject

//static class method definition
+(BaseTickets *)buyNewTicket: (int)ticketType;

@end
