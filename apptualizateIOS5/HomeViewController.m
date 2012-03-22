//
//  HomeViewController.m
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/21/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "HomeViewController.h"
#import "FeaturedParentViewController.h"
#import "ProductsParentViewController.h"
#import "StoresParentViewController.h"
#import "LoyaltyViewController.h"
#import "ShopViewController.h"

@implementation HomeViewController

@synthesize homeTabBarController = _homeTabBarController;

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
	
	
	UIViewController *viewController1 = [[FeaturedParentViewController alloc] initWithNibName:@"FeaturedParentViewController" bundle:nil];
	UIViewController *viewController2 = [[ProductsParentViewController alloc] initWithNibName:@"ProductsParentViewController" bundle:nil];
	UIViewController *viewController3 = [[StoresParentViewController alloc] initWithNibName:@"StoresParentViewController" bundle:nil];
    UIViewController *viewController4 = [[LoyaltyViewController alloc] initWithNibName:@"LoyaltyViewController" bundle:nil];
    UIViewController *viewController5 = [[ShopViewController alloc] initWithNibName:@"ShopViewController" bundle:nil];
	
	_homeTabBarController = [[UITabBarController alloc] init];
	_homeTabBarController.viewControllers = [NSArray arrayWithObjects:viewController1, viewController2,viewController3,viewController4,viewController5,nil];
 	[_homeTabBarController.view setFrame:self.view.bounds];
	
	[self.view addSubview:_homeTabBarController.view];

    // Do any additional setup after loading the view from its nib.
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
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
		return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight );
        //return YES;
    }}

@end
