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
    NSString *section;
    float ticketPrice;
    int seatLocation;
}

-(NSString*)getText;
@end
