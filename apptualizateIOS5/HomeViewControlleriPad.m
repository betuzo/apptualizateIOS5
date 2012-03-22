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
    UIView *ribbonView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 1024, 46)];
	[ribbonView setBackgroundColor:[UIColor scrollViewTexturedBackgroundColor]];
	
	
    UIViewController *viewController1 = [[FeaturedViewControlleriPad alloc] initWithNibName:@"FeaturedViewControlleriPad" bundle:nil];
	UIViewController *viewController2 = [[ProductsViewControlleriPad alloc] initWithNibName:@"ProductsViewControlleriPad" bundle:nil];
	UIViewController *viewController3 = [[StoresViewControlleriPad alloc] initWithNibName:@"StoresViewControlleriPad" bundle:nil];
	
	_homeTabBarController = [[UITabBarController alloc] init];
	_homeTabBarController.viewControllers = [NSArray arrayWithObjects:viewController1, viewController2,viewController3,nil];
 	[_homeTabBarController.view setFrame:self.view.bounds];
	
	[_homeTabBarController.view addSubview:ribbonView];
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
