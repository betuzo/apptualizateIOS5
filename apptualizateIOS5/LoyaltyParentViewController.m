//
//  LoyaltyParentViewController.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "LoyaltyParentViewController.h"

@implementation LoyaltyParentViewController
@synthesize loyaltyNavigationController = _loyaltyNavigationController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    
    LoyaltyViewController *_loyaltyViewController = [[LoyaltyViewController alloc]initWithNibName:@"LoyaltyViewController" bundle:nil];
    
	_loyaltyNavigationController = [[UINavigationController alloc] initWithRootViewController:_loyaltyViewController];

    [_loyaltyNavigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"header-iphone"] forBarMetrics:UIBarMetricsDefault];
	
	[_loyaltyNavigationController.view setFrame:self.view.bounds];
	[self.view addSubview:_loyaltyNavigationController.view];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
