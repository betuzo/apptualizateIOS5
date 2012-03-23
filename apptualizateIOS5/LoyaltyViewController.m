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
            _listData = [[NSArray alloc] initWithObjects:
                         [[NSArray alloc] initWithObjects:
                          [[NSArray alloc] initWithObjects:@"MacPuntos.. premios a nuestros Fan", @"Si compras ganas, si vienes ganas, si nos recomiendas ganas, aquí... !Tu ganas¡", @"boton", nil],
                          nil],
                         [[NSArray alloc] initWithObjects:
                          [[NSArray alloc] initWithObjects:@"¡Unete es Gratis!", @"Tus nos premias con tu preferencia y nosotros con Promociones", @"placa1", nil],
                          [[NSArray alloc] initWithObjects:@"¿No sabes de la venta nocturna?", @"Con nosotros tu tienes el trato que te mereces", @"placa3", nil],
                          [[NSArray alloc] initWithObjects:@"¡Con solo venir ya ganaste!", @"No tardes mas en unirte a nuesto programa FAN!", @"placa5", nil],
                          nil],
                         nil];
        }
        else
        {
            [_loyaltyUser setOn:YES];
            [_fullNameUser setText:[[UserService infoUser] objectAtIndex:0]];
            [_statusUser setText:[[UserService infoUser] objectAtIndex:2]];
            _listData = [[NSArray alloc] initWithObjects:
                         [[NSArray alloc] initWithObjects:
                          [[NSArray alloc] initWithObjects:@"Mis MacPuntos obtenidos son: ", @"Descubre en que puedes ocupar tus MacPuntos", @"boton-con-puntos-negro", nil],
                          nil],
                         [[NSArray alloc] initWithObjects:
                          [[NSArray alloc] initWithObjects:@"Venta Nocturna Nueva iPad", @"Tu puedes ser el elegido... ¡Aprovecha la venta Nocturna!", @"placa1", nil],
                          [[NSArray alloc] initWithObjects:@"20% Descuento Accesorios p iPhone", @"Tienes el mejor telefono... ¡se merece los mejores accesorios!", @"placa2", nil],
                          [[NSArray alloc] initWithObjects:@"20% Descuento Accesorios p iPhone", @"Tienes el mejor telefono... ¡se merece los mejores accesorios!", @"placa6", nil],
                          [[NSArray alloc] initWithObjects:@"Mas Promociones", @"¡Descubre mas promociones para nuestros Fans!", @"placa5", nil],
                          nil],
                         nil];
        }
    };
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
    
    
    [[cell nameItem] setText:[[[[[_listData objectAtIndex:indexPath.section]allObjects]objectAtIndex:indexPath.row] allObjects] objectAtIndex:0]];
    [[cell descItem] setText:[[[[[_listData objectAtIndex:indexPath.section]allObjects]objectAtIndex:indexPath.row] allObjects] objectAtIndex:1]];
    [[cell imgItem] setImage:[UIImage imageNamed:[[[[[_listData objectAtIndex:indexPath.section]allObjects]objectAtIndex:indexPath.row] allObjects] objectAtIndex:2]]];	
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

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

@end
