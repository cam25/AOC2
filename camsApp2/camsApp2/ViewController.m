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
    
       
    baseLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 60.0f, 320.0f, 50.0f)];
    baseLabel.backgroundColor = [UIColor redColor];
    baseLabel.textColor = [UIColor whiteColor];
    baseLabel.numberOfLines = 4;
    baseLabel.text = [baseTickets getText];
    [self.view addSubview:baseLabel];
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
