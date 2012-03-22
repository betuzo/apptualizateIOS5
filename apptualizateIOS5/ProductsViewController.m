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


@implementation ProductsViewController
@synthesize listData;

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
    NSDictionary *row1=[[NSDictionary alloc]initWithObjectsAndKeys:@"Mac",@"Name",@"Destopk y Laptops",@"Description", nil];
    NSDictionary *row2=[[NSDictionary alloc]initWithObjectsAndKeys:@"Ipod",@"Name",@"Escucha tu musica",@"Description", nil];
    NSDictionary *row3=[[NSDictionary alloc]initWithObjectsAndKeys:@"Iphone",@"Name",@"Smartphones 4 y 4S",@"Description", nil];
    NSDictionary *row4=[[NSDictionary alloc]initWithObjectsAndKeys:@"Ipad",@"Name",@"Ipad2 y New Ipad",@"Description", nil];
    self.listData=[[NSArray alloc]initWithObjects:row1,row2,row3,row4, nil];
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
    /*static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier];
    }
    NSUInteger row=[indexPath row];
    cell.textLabel.text=[listData objectAtIndex:row];
    return cell;*/
    static NSString *CellTableIdentifier = @"CellTableIdentifier";
    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib=[UINib nibWithNibName:@"ProductsCellViewController" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
        nibsRegistered=YES;
        }
    ProductsCellViewController *cell=[tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    if (cell==nil) {
        cell=[[ProductsCellViewController alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellTableIdentifier];
    }
        NSUInteger row=[indexPath row];
        NSDictionary *rowData=[self.listData objectAtIndex:row];
        [[cell nameProduct] setText:[rowData objectForKey:@"Name"]];
        [[cell descProduct] setText:[rowData objectForKey:@"Description"]];

    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
@end
