//
//  ViewController.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"
#import "BaseTickets.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    baseTickets = [[BaseTickets alloc] init];
   
    // top label
    self.view.backgroundColor = [UIColor blueColor];
    header = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 300.0f, 20.0f)];
    header.backgroundColor = [UIColor redColor];
    header.textAlignment = NSTextAlignmentCenter;
    header.text = @" Washington Wizards Ticket Prices";
    header.textColor = [UIColor whiteColor];
    [self.view addSubview:header];
    
  
    //creates an instance from the factory of type object seasonTickets
    seasonTickets *getSeasonTickets = (seasonTickets*)[ticketFactory buyNewTicket:season];
    
    
    if (getSeasonTickets != nil){
        
    //creates label for season tickets
    seasonLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 40.0f, 320.0f, 20.0f)];
    seasonLabel.backgroundColor = [UIColor redColor];
    seasonLabel.textColor = [UIColor whiteColor];
    seasonLabel.numberOfLines = 1;
    seasonLabel.textAlignment = NSTextAlignmentCenter;
    seasonLabel.text = @"Season Tickets";
    [self.view addSubview:seasonLabel];
    
     //calls calulation method for season ticket calculation
    [getSeasonTickets calculateTotalTicketPrice];
    
    //creates season ticket calculation label
    seasonCalculation = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 63.0f, 320.0f, 90.0f)];
    seasonCalculation.backgroundColor = [UIColor redColor];
    seasonCalculation.textAlignment = NSTextAlignmentCenter;
    seasonCalculation.numberOfLines = 3;
    seasonCalculation.text = [NSString stringWithFormat:@"%.2f is regular price of season tickets adding %.2f for tax with %@ seats the total cost for season tickets is %.2f",[getSeasonTickets ticketPricePerSeat], [getSeasonTickets Tax],[getSeasonTickets section], [ getSeasonTickets totalPriceForTickets]];
    seasonCalculation.textColor = [UIColor whiteColor];
    [self.view addSubview:seasonCalculation];
    
    };
    
    //creates an instance from the factory of type object vip tickets
    vipTickets *getVipTickets = (vipTickets*)[ticketFactory buyNewTicket:vip];
    if (getVipTickets != nil) {
        
        //call calculation method for getVipTickets
        [getVipTickets calculateTotalTicketPrice];
    
    vipLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 156.0f, 320.0f, 20.0f)];
    vipLabel.backgroundColor = [UIColor redColor];
    vipLabel.textColor = [UIColor whiteColor];
    vipLabel.numberOfLines = 4;
    vipLabel.textAlignment = NSTextAlignmentCenter;
    vipLabel.text = [NSString stringWithFormat:@"VIP Tickets"];
    [self.view addSubview:vipLabel];
    
     //calculation label
    vipCalculation = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 180.0f, 320.0f, 125.0f)];
    vipCalculation.backgroundColor = [UIColor redColor];
    vipCalculation.textColor = [UIColor whiteColor];
    vipCalculation.numberOfLines = 5;
    vipCalculation.textAlignment = NSTextAlignmentCenter;
    vipCalculation.text = [NSString stringWithFormat:@"The price per seat for Viptickets are %.2f with a tax of %.2f. The %@ upgragde package price is %.2f that gives a %d dollar discount off the total equalling %.2f per skybox seat.", [getVipTickets ticketPricePerSeat],[getVipTickets Tax],[getVipTickets section], [getVipTickets skyBoxUpgradePrice],[getVipTickets upgradeDiscount], [getVipTickets totalUpgradePurchase]];
    [self.view addSubview:vipCalculation];
    
    };
    
    //creates an instance from the factory of type object groupTickets
    groupTickets *getGroupTickets = (groupTickets*)[ticketFactory buyNewTicket:group];
    if(getGroupTickets != nil){
        
    //calls calculation method for groupTickets
    [getGroupTickets calculateTotalTicketPrice];
    
    groupLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 309.0f, 320.0f, 20.0f)];
    groupLabel.backgroundColor = [UIColor redColor];
    groupLabel.textColor = [UIColor whiteColor];
    groupLabel.numberOfLines = 1;
    groupLabel.textAlignment = NSTextAlignmentCenter;
    groupLabel.text = [NSString stringWithFormat:@"Group Tickets"];
    [self.view addSubview:groupLabel];
    
        //calculation label
    groupCalculation = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 333.0f, 320.0f, 119.0f)];
    groupCalculation.backgroundColor = [UIColor redColor];
    groupCalculation.textColor = [UIColor whiteColor];
    groupCalculation.numberOfLines = 5;
    groupCalculation.textAlignment = NSTextAlignmentCenter;
    groupCalculation.text = [NSString stringWithFormat:@"Group seating is five or more. Price per seat is %.2f and tax is %.2f in a %@. So with a group of five people you will pay %.2f dollars for group seats.", [getGroupTickets ticketPricePerSeat], [getGroupTickets Tax],[getGroupTickets section], [getGroupTickets totalPriceOfGroupTickets]];
    [self.view addSubview:groupCalculation];
        
    };
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
