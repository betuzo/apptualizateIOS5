//
//  DetailProductsViewController.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "DetailProductsViewController.h"

@implementation DetailProductsViewController

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
    
    CGRect rectButton;
    
    rectButton.size.width = 48;
    rectButton.size.height = 30;
    
    rectButton.origin.x = 0;
    rectButton.origin.y = 0;
    
    UIButton * leftButtonItem = [[UIButton alloc] initWithFrame:rectButton];
    
    [leftButtonItem setImage:[UIImage imageNamed:@"boton-verde"] forState:UIControlStateNormal];
    
    UIBarButtonItem * leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftButtonItem];
    
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
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
