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
    
    //UIButton * leftButtonItem = [[UIButton alloc] initWithFrame:rectButton];
    
    UIButton *leftButtonItem = [UIButton buttonWithType:UIButtonTypeCustom];
    UIColor *buttonColorDefault = [UIColor colorWithRed:90.0f/255.0f green:90.0f/255.0f blue:90.0f/255.0f alpha:1.0];
    UIColor *buttonColorHighlight = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0];

    
    [leftButtonItem addTarget:self action:@selector(goBackView:) forControlEvents:UIControlEventTouchUpInside];
    [leftButtonItem setFrame:rectButton];
    [leftButtonItem setBackgroundImage:[UIImage imageNamed:@"boton-verde"] forState:UIControlStateNormal];
    
    [leftButtonItem setTitleColor:buttonColorDefault forState:UIControlStateNormal];
    [leftButtonItem setTitleColor:buttonColorHighlight forState:UIControlStateHighlighted];

    UIBarButtonItem * leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftButtonItem];
    
    
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
    
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    // Do any additional setup after loading the view from its nib.
}

- (void) changeColor:(id) sender
{
    NSLog(@"changeColor");
    if ([sender selectedSegmentIndex]==1) {
        [sender setImage:[UIImage imageNamed:@"blanco"] forSegmentAtIndex:0];
        [sender setImage:[UIImage imageNamed:@"negro-on"] forSegmentAtIndex:1];
    }else{
        [sender setImage:[UIImage imageNamed:@"blanco-on"] forSegmentAtIndex:0];
        [sender setImage:[UIImage imageNamed:@"negro"] forSegmentAtIndex:1];
    }
}

- (void) goBackView:(id) sender
{
    NSLog(@"goBackView");
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
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.textLabel.text = [[[_detailsProducts objectAtIndex:indexPath.row]allObjects]objectAtIndex:0];
    cell.detailTextLabel.text = [[[_detailsProducts objectAtIndex:indexPath.row]allObjects] objectAtIndex:1];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_detailsProducts count];
}

@end
