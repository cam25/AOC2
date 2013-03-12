//
//  ViewController.m
//  camsApp2
//
//  Created by Cameron Mozie on 3/4/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"
#import "BaseTickets.h"
#import "ViewControllerTwo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    label1.text = @"Cameron's Ticket Purchaser";
    label2.text = @"Ticket Category";
 
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button !=nil) {
        if (button.tag == 0) {
            
            vipTickButn.enabled = true;
            
            NSLog(@"you pressed season button");
            
        } else if (button.tag == 1) {
            
            groupTickButn.enabled = true;
            NSLog(@"you pressed vip button");
            
        }else if (button.tag == 2)
            
        {
            NSLog(@"you pressed group button");
        }
    }
}
-(IBAction)infoClick:(id)sender
{
    ViewControllerTwo *newViewControl = [[ViewControllerTwo alloc] initWithNibName:@"SecondView" bundle:nil];
    if (newViewControl != nil) {
        [self presentViewController:newViewControl animated:TRUE completion:nil];
        
    }

}

-(IBAction)onStepperClick:(id)sender
{
    
    if (counter != nil) {
        
        int currentValue = counter.value;
        labelView.text = [NSString stringWithFormat:@"step value is = %d", currentValue];
        
    }
}

-(IBAction)segmentChange:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
        if (segmentControl != nil)
        {
            int selectedIndex = segmentControl.selectedSegmentIndex;
            
            
            if (selectedIndex == 0) {
                self.view.backgroundColor = [UIColor colorWithRed:160/255.0f green:67/255.0f blue:0/255.0f alpha:1.0f];
            }else if (selectedIndex == 1)
            {
                self.view.backgroundColor = [UIColor cyanColor ];
            }else if (selectedIndex == 2)
                self.view.backgroundColor = [UIColor colorWithRed:225/255.0f green:175/255.0f blue:11/255.0f alpha:1.0f];
        }
}
@end
/*
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
 
 //Checks if object is created properly and create UILabels
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
 seasonCalculation.text = [NSString stringWithFormat:@"%.2f is the total cost of season tickets with %i seats",[getSeasonTickets totalPriceForSeasonTickets], [getSeasonTickets seats]];
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
 groupCalculation.text = [NSString stringWithFormat:@"Group seating is five or Ten. Price per seat is %.2f and tax is %.2f in a %@. So with a group of %i people you will pay %.2f dollars for group seats.", [getGroupTickets toalTicketPricePerSeat ], [getGroupTickets Tax],[getGroupTickets section],[getGroupTickets partyOfFive], [getGroupTickets toalTicketPricePerSeat]];
 [self.view addSubview:groupCalculation];
 
 };
 */