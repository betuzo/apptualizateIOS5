//
//  DetailPointsViewController.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 23/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "DetailPointsViewController.h"

@implementation DetailPointsViewController

@synthesize listData = _listData;

@synthesize nameItem = _nameItem;

@synthesize descItem = _descItem;

@synthesize imgItem = _imgItem;

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

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    PuntosCellViewController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
    if (cell == nil) {
		NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"PuntosCellViewController" owner:self options:nil];
        cell = (PuntosCellViewController *)[nib objectAtIndex:0];
    }
	
	cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    
    [[cell nameItem] setText:[[[_listData objectAtIndex:indexPath.row] allObjects] objectAtIndex:0]];
    [[cell descItem] setText:[[[_listData objectAtIndex:indexPath.row] allObjects] objectAtIndex:1]];
    [[cell imgItem] setImage:[UIImage imageNamed:[[[_listData objectAtIndex:indexPath.row] allObjects] objectAtIndex:2]]];	
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_listData count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_nameItem setText:[[[_listData objectAtIndex:indexPath.row]allObjects]objectAtIndex:0]];
    [_descItem setText:[[[_listData objectAtIndex:indexPath.row]allObjects]objectAtIndex:1]];
    [_imgItem setImage:[UIImage imageNamed:[[[_listData objectAtIndex:indexPath.row] allObjects] objectAtIndex:2]]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

@end
