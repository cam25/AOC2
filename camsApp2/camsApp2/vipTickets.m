//
//  vipTickets.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "vipTickets.h"

@implementation vipTickets
@synthesize ticketPricePerSeat, Tax, section, skyBoxUpgradePrice, upgradeDiscount, totalUpgradePurchase;

-(id)init{

    self = [super init];
    if(self != nil)
    {
        //sets values to properties
        [self setTicketPricePerSeat:137.32];
        [self setTax:44.23];
        [self setSection:@"skyBox"];
        [self setSkyBoxUpgradePrice:200.55];
        [self setUpgradeDiscount:10];
        

        NSLog(@"You have chosen skybox upgrade");
        
    }
    return self;
};

//overwriting the calculation method

-(void)calculateTotalTicketPrice
{
    [self setTotalUpgradePurchase:(skyBoxUpgradePrice + ticketPricePerSeat - upgradeDiscount)];
     NSLog(@"You spent %f upgrading to skybox", self.totalUpgradePurchase);
}

@end
