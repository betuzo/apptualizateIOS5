//
//  ProductsViewController.m
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/21/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "ProductsViewController.h"
#import "ProductsParentViewController.h"
#import "ProductsCellViewController.h"
#import "DetailProductsViewController.h"


@implementation ProductsViewController
@synthesize listData=_listData;

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
    /*NSDictionary *row1=[[NSDictionary alloc]initWithObjectsAndKeys:@"Mac",@"Name",@"Destopk y Laptops",@"Description", nil];
    NSDictionary *row2=[[NSDictionary alloc]initWithObjectsAndKeys:@"Ipod",@"Name",@"Escucha tu musica",@"Description", nil];
    NSDictionary *row3=[[NSDictionary alloc]initWithObjectsAndKeys:@"Iphone",@"Name",@"Smartphones 4 y 4S",@"Description", nil];
    NSDictionary *row4=[[NSDictionary alloc]initWithObjectsAndKeys:@"Ipad",@"Name",@"Ipad2 y New Ipad",@"Description", nil];
    self.listData=[[NSArray alloc]initWithObjects:row1,row2,row3,row4, nil];*/
    _listData = [[NSArray alloc] initWithObjects:
                         [[NSArray alloc] initWithObjects:@"Mac", @"Destopk y Laptops", @"mini-iphone", nil],
                         [[NSArray alloc] initWithObjects:@"iPod", @"Escucha tu música favorita", @"mini-iphone-blanco", nil],
                         [[NSArray alloc] initWithObjects:@"iPhone", @"Smartphones 4 y 4S", @"mini-iphone", nil], 
                         [[NSArray alloc] initWithObjects:@"iPad", @"Ipad2 y el Nuevo Ipad", @"mini-iphone-negro", nil], 
                         nil];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.listData=nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
#pragma mark -
#pragma mark Table View Data Source Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.listData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
 
    /*static NSString *CellTableIdentifier = @"CellTableIdentifier";
    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib=[UINib nibWithNibName:@"ProductsCellViewController" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
        nibsRegistered=YES;
        }
    ProductsCellViewController *cell=[tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    if (cell==nil) {
        cell=[[ProductsCellViewController alloc]initWithStyle:UITableViewCellSelectionStyleGray reuseIdentifier:CellTableIdentifier];
    }
        NSUInteger row=[indexPath row];
        NSDictionary *rowData=[self.listData objectAtIndex:row];
        [[cell nameProduct] setText:[rowData objectForKey:@"Name"]];
        [[cell descProduct] setText:[rowData objectForKey:@"Description"]];

    return cell;*/
    static NSString *CellIdentifier = @"Cell";
	
    ProductsCellViewController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
    if (cell == nil) {
		NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ProductsCellViewController" owner:self options:nil];
        cell = (ProductsCellViewController *)[nib objectAtIndex:0];
    }
	
	cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    
    [[cell nameProduct] setText:[[[_listData objectAtIndex:indexPath.row] allObjects] objectAtIndex:0]];
    [[cell descProduct] setText:[[[_listData objectAtIndex:indexPath.row] allObjects] objectAtIndex:1]];
    [[cell imageProduct] setImage:[UIImage imageNamed:[[[_listData objectAtIndex:indexPath.row] allObjects] objectAtIndex:2]]];	
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DetailProductsViewController *detailViewController = [[DetailProductsViewController alloc] initWithNibName:@"DetailProductsViewController" bundle:nil];
    // ...
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    
	
}

@end
