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
    UITabBarItem *tab1 = [[UITabBarItem alloc] initWithTitle:@""
                                                       image:[UIImage imageNamed:@"destacados-on"] tag:1];
    [viewController1 setTabBarItem:tab1];  
    
	UIViewController *viewController2 = [[ProductsParentViewController alloc] initWithNibName:@"ProductsParentViewController" bundle:nil];
    UITabBarItem *tab2 = [[UITabBarItem alloc] initWithTitle:@""
                                                       image:[UIImage imageNamed:@"productos-on"] tag:2];
    [viewController2 setTabBarItem:tab2];      
    
	UIViewController *viewController3 = [[StoresParentViewController alloc] initWithNibName:@"StoresParentViewController" bundle:nil];
    UITabBarItem *tab3 = [[UITabBarItem alloc] initWithTitle:@""
                                                       image:[UIImage imageNamed:@"tiendas-on"] tag:3];
    [viewController3 setTabBarItem:tab3];  
    
    UIViewController *viewController4 = [[ShopViewController alloc] initWithNibName:@"ShopViewController" bundle:nil];
    UITabBarItem *tab4 = [[UITabBarItem alloc] initWithTitle:@""
                        image:[UIImage imageNamed:@"carrito-on"] tag:4];
    [viewController4 setTabBarItem:tab4];    

    
    UIViewController *viewController5 = [[LoyaltyViewController alloc] initWithNibName:@"LoyaltyViewController" bundle:nil];
    UITabBarItem *tab5 = [[UITabBarItem alloc] initWithTitle:@""
                                                       image:[UIImage imageNamed:@"fan-on"] tag:5];
    [viewController5 setTabBarItem:tab5];    


	
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
