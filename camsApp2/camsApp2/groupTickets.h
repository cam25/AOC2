//
//  groupTickets.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseTickets.h"
@interface groupTickets : BaseTickets
{
    int groupEnum;
}

typedef enum{
    
    GROUP,
    
}groupEnum;

//properties
@property BOOL partyOfFive;
@property BOOL partyOfTen;
@property float totalPriceOfGroupTickets;

-(void)calculateTotalTicketPrice;
@end
