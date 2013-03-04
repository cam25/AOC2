//
//  BaseTickets.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "BaseTickets.h"

@implementation BaseTickets 

    -(id)init
    {
        self = [super init];
        if (self !=nil)
        {
            ticketPrice = 46.40f;
            seatLocation = 100;
        }
        return self;
    }
-(NSString*)getText
{
    
    section = [NSString stringWithFormat:@" int = %d, float = %f",seatLocation, ticketPrice];
    
    if (section != nil) {
        return section;
    }
    return section;
}
@end
