//
//  vipTickets.h
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseTickets.h"
@interface vipTickets : BaseTickets
{
    int vipEnum;
    
}

typedef enum{
   VIP,
    
}vipEnum;

@property int skyBoxUpgradePrice;
@property int upgradeDiscount;
@property float totalUpgradePurchase;

-(void)calculateTotalTicketPrice;


@end
