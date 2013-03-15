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

typedef enum {//enums for segment toggle
    CYAN = 0,
    BURGANDY,
    GOLD
}colorDef;

- (void)viewDidLoad
{
    
    label2.text = @"Ticket Total";
    
    //info button
    UIButton *nfoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (nfoButton != nil) {
        nfoButton.frame = CGRectMake(290.0f, 0.0f, 20.0f, 100.0f);
        [nfoButton addTarget:self action:@selector(infoClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:nfoButton];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onStepperClick:(id)sender
{
    
    if (counter != nil) {

        int counterAdd = counter.value;
         if(seasonTickButn.enabled == false)//if button is not enabled show stepper
        {
            categoryInput.text = [NSString stringWithFormat:@"Number of Seats %d", counterAdd];//inputs value from stepper into text field
        }else if (vipTickButn.enabled == false)
        {
            categoryInput.text = [NSString stringWithFormat:@"Number of Seats %d", counterAdd];//inputs value from stepper into text field

        }else if (groupTickButn.enabled == false)
        {
            categoryInput.text = [NSString stringWithFormat:@"Number of Seats %d", counterAdd];//inputs value from stepper into text field

        }
    
        
    }
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button !=nil) {
        
       
        if (button.tag == 0) {//first button index
            
            if (seasonTickButn.enabled  == true) {//if button is enabled enable stepper
                counter.enabled = true;
                counter.minimumValue = 1;
                counter.maximumValue = 10;
            }else{
                counter.enabled = false;
            }
            int counterAdd = counter.value; //sets counter value to an int 
            seasonTickButn.enabled = false;
            vipTickButn.enabled = true;
            groupTickButn.enabled = true;
            labelView.text = @"Season Tickets";
            categoryInput.text = [NSString stringWithFormat:@"Season Tickets with %d seats", counterAdd];
            
            
            
            NSLog(@"you pressed season button");
            
        } else if (button.tag == 1) { // second button index
            if (vipTickButn.enabled  == true) {
                counter.enabled = true;
                counter.minimumValue = 1;
                counter.maximumValue = 10;
            }else{
                counter.enabled = false;
            }
          
            int counterAdd = counter.value;
            labelView.text = @"VIP ticket";

            categoryInput.text = [NSString stringWithFormat:@"VIP Tickets with %d seats", counterAdd];
            
            seasonTickButn.enabled = true;
            vipTickButn.enabled = false;
            groupTickButn.enabled = true;
            
          
            NSLog(@"you pressed vip button");
            
        }else if (button.tag == 2)//third button index
            
        {
            if (groupTickButn.enabled  == true) {//if group button enabled enable stepper
                counter.enabled = true;
                counter.minimumValue = 5;
                counter.maximumValue = 10;
            }else{
                counter.enabled = false;
                
            }
            int counterAdd = counter.value;
            seasonTickButn.enabled = true;
            vipTickButn.enabled = true;
            groupTickButn.enabled = false;
            labelView.text = @"Group Tickets";

            categoryInput.text = [NSString stringWithFormat:@"Group Tickets with %d seats", counterAdd];
            NSLog(@"you pressed group button");
            
        }
    }
}
-(IBAction)infoClick:(id)sender//second view
{
    ViewControllerTwo *newViewControl = [[ViewControllerTwo alloc] initWithNibName:@"SecondView" bundle:nil];
    if (newViewControl != nil) {
        [self presentViewController:newViewControl animated:TRUE completion:nil];
        
    }

}



-(IBAction)segmentChange:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
        if (segmentControl != nil)
        {
            
            int selectedIndex = segmentControl.selectedSegmentIndex;//gets segment index
            
            
            switch (selectedIndex) {//change color on toggle for specific seg index
                case CYAN:
                    self.view.backgroundColor = [UIColor cyanColor ];
                    break;
                    
                    case BURGANDY:
                    self.view.backgroundColor = [UIColor colorWithRed:160/255.0f green:67/255.0f blue:0/255.0f alpha:1.0f];
                    break;
                    
                    case GOLD:
                    
                default:
           ;
                    break;
            }
            
           
        }
}
-(IBAction)calculateClick:(id)sender
{
    int counterAdd = counter.value;
    
    categoryInput.text = [NSString stringWithFormat:@"Total price is %d", counterAdd]; //sets text in textfield to count value
    if (seasonTickButn.enabled == false)
    {
        seasonTickets *getSeasonTickets = (seasonTickets*)[ticketFactory buyNewTicket:season]; //season ticket method from factory
        [getSeasonTickets totalPriceForSeasonTickets]; //total from season ticket calculation
        [getSeasonTickets calculateTotalTicketPrice]; // calculate call
        int seasonTicketTotal =  getSeasonTickets.totalPriceForSeasonTickets * counterAdd; //set seasonTicketTotal to an int that grabs total price of season of tickets and multiplies times the value from the stepper
        
        categoryInput.text = [NSString stringWithFormat:@"%d for %d Seats",seasonTicketTotal, counterAdd];//sets text in textfield 
        
        
    }else if (vipTickButn.enabled == false)
    {
        vipTickets *getVipTickets = (vipTickets*)[ticketFactory buyNewTicket:vip];//vip method from ticket factory
        [getVipTickets totalUpgradePurchase];//total price for upgrade
        [getVipTickets calculateTotalTicketPrice];//calculate total call
        int vipTicketTotal = getVipTickets.totalUpgradePurchase * counterAdd;
        categoryInput.text = [NSString stringWithFormat:@"%d for %d Seats",vipTicketTotal, counterAdd];
        
    }else if (groupTickButn.enabled == false)
    {
        groupTickets *getGroupTickets = (groupTickets*)[ticketFactory buyNewTicket:group];
        [getGroupTickets totalPriceOfFiveGroupTickets];
        [getGroupTickets calculateTotalTicketPrice];
        int groupTicketTotal = getGroupTickets.toalTicketPricePerSeat * counterAdd;
        categoryInput.text = [NSString stringWithFormat:@"%d for %d Seats",groupTicketTotal, counterAdd];
        
        
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