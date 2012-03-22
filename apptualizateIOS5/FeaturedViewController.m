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
    
    
    [detailViewController setDetailsProducts:[[NSArray alloc] initWithObjects:
                                     [[NSArray alloc] initWithObjects:@"iPod touch", @"Tu música en tu dedo", nil],
                                     [[NSArray alloc] initWithObjects:@"iPod nano", @"Un pequeño gigante", nil],
                                     [[NSArray alloc] initWithObjects:@"iPad 2", @"Tu mejor aliado", nil], 
                                     [[NSArray alloc] initWithObjects:@"iPhone 4", @"Conectate al mundo", nil], 
                                     [[NSArray alloc] initWithObjects:@"MacBook Pro", @"Tu mejor aliado", nil], 
                                     nil] ];
    
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    
	
}

@end
