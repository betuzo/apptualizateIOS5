//
//  LoyaltyViewController.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "LoyaltyViewController.h"

@implementation LoyaltyViewController

@synthesize listData = _listData;

@synthesize fullNameUser = _fullNameUser;

@synthesize statusUser = _statusUser;

@synthesize loyaltyUser = _loyaltyUser;

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
    if ([[UserService infoUser] count]>3) {
        if ([[[UserService infoUser] objectAtIndex:3] isEqual:@"NO"]) 
        {
            [_loyaltyUser setOn:NO];
            [_fullNameUser setText:[[UserService infoUser] objectAtIndex:0]];
            [_statusUser setText:[[UserService infoUser] objectAtIndex:2]];
        }
        else
        {
            [_loyaltyUser setOn:YES];
            [_fullNameUser setText:[[UserService infoUser] objectAtIndex:0]];
            [_statusUser setText:[[UserService infoUser] objectAtIndex:2]];
        }
    };
    
    
    
    _listData = [[NSArray alloc] initWithObjects:
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:@"Puntos", @"Mac Puntos logrados: ", nil],
                        nil],
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:@"Venta Nocturna Nueva iPad", @"Tu puedes ser el elegido... ¡Aprovecha la venta Nocturna!", nil],
                        [[NSArray alloc] initWithObjects:@"20% Descuento Accesorios p iPhone", @"Tienes el mejor telefono... ¡se merece los mejores accesorios!", nil],
                        [[NSArray alloc] initWithObjects:@"Mas Promociones", @"¡Descubre mas promociones para nuestros Fans!", nil],
                        nil],
                    nil];
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
    
    cell.textLabel.text = [[[[[_listData objectAtIndex:indexPath.section]allObjects]objectAtIndex:indexPath.row] allObjects] objectAtIndex:0];
    cell.detailTextLabel.text = [[[[[_listData objectAtIndex:indexPath.section]allObjects]objectAtIndex:indexPath.row] allObjects] objectAtIndex:1];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[_listData objectAtIndex:section] count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [_listData count];
}

@end
