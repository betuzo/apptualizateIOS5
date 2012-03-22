//
//  FeaturedParentViewController.m
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/21/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "FeaturedParentViewController.h"

@implementation FeaturedParentViewController

@synthesize featuredProdcutsNavigationController = _featuredProdcutsNavigationController;

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
	
	FeaturedViewController *controller = [[FeaturedViewController alloc]initWithNibName:@"FeaturedViewController" bundle:nil];
    
    [controller setFeaturedProducts:[[NSArray alloc] initWithObjects:
                                    [[NSArray alloc] initWithObjects:@"iPod touch", @"Tu música en tu dedo", @"mini-IpodT", nil],
                                    [[NSArray alloc] initWithObjects:@"iPad 2", @"Tu mejor aliado", @"mini-iPad", nil], 
                                    [[NSArray alloc] initWithObjects:@"iPod nano", @"Un pequeño gigante", @"mini-iPodN", nil],
                                    [[NSArray alloc] initWithObjects:@"iPhone 4", @"Conectate al mundo", @"mini-iphone", nil], 
                                    [[NSArray alloc] initWithObjects:@"MacBook Pro", @"Tu mejor aliado", @"mini-iphone-negro", nil], 
                                    nil] ];
    
	_featuredProdcutsNavigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    
    [_featuredProdcutsNavigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"header-iphone"] forBarMetrics:UIBarMetricsDefault];
    
	[_featuredProdcutsNavigationController.view setFrame:self.view.bounds];
    
	[self.view addSubview:_featuredProdcutsNavigationController.view];
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
