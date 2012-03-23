//
//  FeaturedViewControlleriPad.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "FeaturedViewControlleriPad.h"
#import "ProductsCellViewController.h"


@implementation FeaturedViewControlleriPad
@synthesize featuredTableViewController = _featuredTableViewController;
@synthesize featuredProducts = _featuredProducts;
@synthesize productView = _productView;
@synthesize imagesArray = _imagesArray;

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
	[_featuredTableViewController setDelegate:self];
	[_featuredTableViewController setDataSource:self];
	_featuredProducts = [[NSArray alloc] initWithObjects:
						 [[NSArray alloc] initWithObjects:@"iPod touch", @"Tu música en tu dedo", @"mini-iphone", nil],
						 [[NSArray alloc] initWithObjects:@"iPod nano", @"Un pequeño gigante", @"mini-iphone-blanco", nil],
						 [[NSArray alloc] initWithObjects:@"iPad 2", @"Tu mejor aliado", @"mini-iphone-negro", nil], 
						 [[NSArray alloc] initWithObjects:@"iPhone 4", @"Conectate al mundo", @"mini-iphone", nil], 
						 [[NSArray alloc] initWithObjects:@"MacBook Pro", @"Tu mejor aliado", @"mini-iphone-negro", nil], 
						 nil];
	
	_imagesArray = [[NSArray alloc]initWithObjects:@"newIpad.png",@"iPhone4S.png",@"macBig.png",@"iPodnanoBig.png",nil];
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
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight );

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
	
    ProductsCellViewController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
    if (cell == nil) {
		NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ProductsCellViewController" owner:self options:nil];
        cell = (ProductsCellViewController *)[nib objectAtIndex:0];
    }
	
	cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    
    [[cell nameProduct] setText:[[[_featuredProducts objectAtIndex:indexPath.row] allObjects] objectAtIndex:0]];
    [[cell descProduct] setText:[[[_featuredProducts objectAtIndex:indexPath.row] allObjects] objectAtIndex:1]];
    [[cell imageProduct] setImage:[UIImage imageNamed:[[[_featuredProducts objectAtIndex:indexPath.row] allObjects] objectAtIndex:2]]];
	
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[_productView setImage:[UIImage imageNamed:[_imagesArray objectAtIndex:indexPath.row]]];

}

@end
