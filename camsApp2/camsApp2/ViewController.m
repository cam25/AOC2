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
    if (baseTickets != nil) {
        
    }
    
    self.view.backgroundColor = [UIColor blueColor];
    header = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 300.0f, 20.0f)];
    header.backgroundColor = [UIColor redColor];
    header.textAlignment = NSTextAlignmentCenter;
    header.text = @" Washington Wizards Ticket Prices";
    header.textColor = [UIColor whiteColor];
    [self.view addSubview:header];
    
       
    seasonLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 60.0f, 320.0f, 40.0f)];
    seasonLabel.backgroundColor = [UIColor redColor];
    seasonLabel.textColor = [UIColor whiteColor];
    seasonLabel.numberOfLines = 1;
    seasonLabel.textAlignment = NSTextAlignmentCenter;
    seasonLabel.text = @"Season Tickets";
    [self.view addSubview:seasonLabel];
    
    seasonCalculation = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 130.0f, 320.0f, 20.0f)];
    seasonCalculation.backgroundColor = [UIColor redColor];
    seasonCalculation.textAlignment = NSTextAlignmentCenter;
    seasonCalculation.numberOfLines = 4;
    seasonCalculation.text = [NSString stringWithFormat:@" %i is amount for Gold Member season Tickets", [seasonTickets ]];
    seasonCalculation.textColor = [UIColor whiteColor];
    [self.view addSubview:seasonCalculation];
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
