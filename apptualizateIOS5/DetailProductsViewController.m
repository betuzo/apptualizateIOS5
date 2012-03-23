//
//  DetailProductsViewController.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "DetailProductsViewController.h"

@implementation DetailProductsViewController

@synthesize detailsProducts = _detailsProducts;

@synthesize nameProduct = _nameProduct;

@synthesize descProduct = _descProduct;

@synthesize imageProduct = _imageProduct;

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
        
    UIButton *leftButtonItem = [UIButton buttonWithType:UIButtonTypeCustom];

    UIButton *rightButtonItem = [UIButton buttonWithType:UIButtonTypeCustom];

    [rightButtonItem addTarget:self action:@selector(goShopView:) forControlEvents:UIControlEventTouchUpInside];
    [rightButtonItem setFrame:rectButton];
    [rightButtonItem setBackgroundImage:[UIImage imageNamed:@"boton-verde"] forState:UIControlStateNormal];
    
    [leftButtonItem addTarget:self action:@selector(goBackView:) forControlEvents:UIControlEventTouchUpInside];
    [leftButtonItem setFrame:rectButton];
    [leftButtonItem setBackgroundImage:[UIImage imageNamed:@"boton-verde"] forState:UIControlStateNormal];
    
    UIBarButtonItem * leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftButtonItem];
    
    UIBarButtonItem * rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightButtonItem];
    
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    
    UISegmentedControl* switchView=[[UISegmentedControl alloc] initWithItems:[[NSMutableArray alloc] initWithObjects:@"Blanco",@"Negro",nil]];
    int w = 120;
    int h = 28;
    [switchView setFrame:CGRectMake(self.view.frame.size.width/2 ,
                                    self.view.frame.size.height/3,w,h)];
    switchView.selectedSegmentIndex=0;
    switchView.segmentedControlStyle=UISegmentedControlStyleBar;
    [switchView setImage:[UIImage imageNamed:@"negro"] forSegmentAtIndex:0];
    [switchView setImage:[UIImage imageNamed:@"blanco-on"] forSegmentAtIndex:1];
    [switchView addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventValueChanged];
        
    [[self view ] addSubview:switchView];
    
    // Do any additional setup after loading the view from its nib.
}

- (void) changeColor:(id) sender
{
    if ([sender selectedSegmentIndex]==1) {
        [sender setImage:[UIImage imageNamed:@"blanco"] forSegmentAtIndex:0];
        [sender setImage:[UIImage imageNamed:@"negro-on"] forSegmentAtIndex:1];
        [_imageProduct setImage:[UIImage imageNamed:@"iphone-negro"]];
    }else{
        [sender setImage:[UIImage imageNamed:@"blanco-on"] forSegmentAtIndex:0];
        [sender setImage:[UIImage imageNamed:@"negro"] forSegmentAtIndex:1];
        [_imageProduct setImage:[UIImage imageNamed:@"iphone-blanco"]];
    }
}

- (void) goShopView:(id) sender
{
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"Grabamos su producto"
                                        delegate:self
                               cancelButtonTitle:nil
                          destructiveButtonTitle:nil
                               otherButtonTitles:@"Grabar mi producto", @"Agregar sin grabado", nil];
    [sheet showInView:self.view];
}

- (void)actionSheetCancel:(UIActionSheet *)actionSheet
{
    [actionSheet removeFromSuperview];
}

- (void) goBackView:(id) sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    cell.textLabel.text = [[[_detailsProducts objectAtIndex:indexPath.row]allObjects]objectAtIndex:0];
    cell.detailTextLabel.text = [[[_detailsProducts objectAtIndex:indexPath.row]allObjects] objectAtIndex:1];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_detailsProducts count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_nameProduct setText:[[[_detailsProducts objectAtIndex:indexPath.row]allObjects]objectAtIndex:0]];
    [_descProduct setText:[[[_detailsProducts objectAtIndex:indexPath.row]allObjects]objectAtIndex:1]];
}

@end
