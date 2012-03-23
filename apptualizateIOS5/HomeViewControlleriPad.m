//
//  HomeViewControlleriPad.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "HomeViewControlleriPad.h"
#import "StoresViewControlleriPad.h"
#import "ProductsViewControlleriPad.h"
#import "FeaturedViewControlleriPad.h"

@implementation HomeViewControlleriPad

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
    // Do any additional setup after loading the view from its nib.
	
	UIImageView *headerView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1024, 46)];
	[headerView setImage:[UIImage imageNamed:@"header.png"]];
    UIView *ribbonView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 1024, 46)];
	[ribbonView setBackgroundColor:[UIColor scrollViewTexturedBackgroundColor]];
	
	
    UIViewController *viewController1 = [[FeaturedViewControlleriPad alloc] initWithNibName:@"FeaturedViewControlleriPad" bundle:nil];
	UITabBarItem *tab1 = [[UITabBarItem alloc] initWithTitle:@"Destacados"
                                                       image:[UIImage imageNamed:@"destacados-on"] tag:1];
	[viewController1 setTabBarItem:tab1];
	
	UIViewController *viewController2 = [[ProductsViewControlleriPad alloc] initWithNibName:@"ProductsViewControlleriPad" bundle:nil];
	UITabBarItem *tab2 = [[UITabBarItem alloc] initWithTitle:@"Productos"
                                                       image:[UIImage imageNamed:@"productos-on"] tag:2];
    [viewController2 setTabBarItem:tab2];  
	
	UIViewController *viewController3 = [[StoresViewControlleriPad alloc] initWithNibName:@"StoresViewControlleriPad" bundle:nil];
	
	UITabBarItem *tab3 = [[UITabBarItem alloc] initWithTitle:@"Tiendas"
                                                       image:[UIImage imageNamed:@"tiendas-on"] tag:3];
    [viewController3 setTabBarItem:tab3]; 
	
	_homeTabBarController = [[UITabBarController alloc] init];
	_homeTabBarController.viewControllers = [NSArray arrayWithObjects:viewController1, viewController1,viewController3,nil];
 	[_homeTabBarController.view setFrame:self.view.bounds];
	
	[_homeTabBarController.view addSubview:headerView];
	[self.view addSubview:_homeTabBarController.view];
	
    
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
	return YES;
}



@end
