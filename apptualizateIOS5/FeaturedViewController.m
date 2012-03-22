//
//  FeaturedViewController.m
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/21/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "FeaturedViewController.h"
#import "ProductsCellViewController.h"
#import "DetailProductsViewController.h"

@implementation FeaturedViewController

@synthesize featuredProducts = _featuredProducts;
@synthesize myFeaturedImage = _myFeaturedImage;
@synthesize descProduct = _descProduct;
@synthesize nameProduct = _nameProduct;

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
    
    if ([_featuredProducts count] > 1) {
        [[self nameProduct] setText:[[[_featuredProducts objectAtIndex:1] allObjects] objectAtIndex:0]];
        [[self descProduct] setText:[[[_featuredProducts objectAtIndex:1] allObjects] objectAtIndex:1]];   
        [[self myFeaturedImage] setImage:[UIImage imageNamed:[[[_featuredProducts objectAtIndex:1] allObjects] objectAtIndex:2]]];
    }
  
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_featuredProducts  count];
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

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DetailProductsViewController *detailViewController = [[DetailProductsViewController alloc] initWithNibName:@"DetailProductsViewController" bundle:nil];
    
    if (indexPath.row==0) 
    {
        [detailViewController setDetailsProducts:[[NSArray alloc] initWithObjects:
                                                  [[NSArray alloc] initWithObjects:@"iPod touch 8 GB : $3,199.00", @"Ganas 100 MacPuntos", nil],
                                                  [[NSArray alloc] initWithObjects:@"iPod touch 32 GB : $4,799.00", @"Ganas 200 MacPunto", nil],
                                                  [[NSArray alloc] initWithObjects:@"iPod touch 64 GB1 : $6,399.00", @"Ganas 400 MacPunto", nil], 
                                                  nil] ];

    }
    if (indexPath.row==2) 
    {
        [detailViewController setDetailsProducts:[[NSArray alloc] initWithObjects:
                                              [[NSArray alloc] initWithObjects:@"iPod nano 8 GB : $2,099.00", @"Ganas 70 MacPuntos", nil],
                                              [[NSArray alloc] initWithObjects:@"iPod touch 16 GB : $2,399.00", @"Ganas 85 MacPuntos", nil],
                                              nil] ];
    }
    if (indexPath.row==1) 
    {
        [detailViewController setDetailsProducts:[[NSArray alloc] initWithObjects:
                                              [[NSArray alloc] initWithObjects:@"New iPad 16 GB Wi-Fi: $9,999.00", @"Ganas 600 MacPuntos", nil],
                                              [[NSArray alloc] initWithObjects:@"New iPad 32 GB Wi-Fi: $11,099.00", @"Ganas 800 MacPuntos", nil],
                                              [[NSArray alloc] initWithObjects:@"iPad 2 16 GB Wi-Fi: $6,099.00", @"Ganas 400 MacPuntos", nil],
                                              [[NSArray alloc] initWithObjects:@"iPad 2 16 GB Wi-Fi + 3G: $8,099.00", @"Ganas 500 MacPuntos", nil],
                                              nil] ];
    }
    
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    
	
}

@end
