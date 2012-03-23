//
//  RegisterViewController.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "RegisterViewController.h"

@implementation RegisterViewController

@synthesize firstNameUser = _firstNameUser;

@synthesize lastNameUser = _lastNameUser;

@synthesize emailUser = _emailUser;

@synthesize loyaltyUser = _loyaltyUser;

@synthesize addresUser = _addresUser;

@synthesize imgLoyalty = _imgLoyalty;

@synthesize type = _type;

@synthesize detailsUser = _detailsUser;

@synthesize phoneTextField = _phoneTextField;

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
    
	
	[_firstNameUser setDelegate:self];
	[_lastNameUser setDelegate:self];
	[_emailUser setDelegate:self];
	[_phoneTextField setDelegate:self];
	
    _detailsUser = [[NSArray alloc] initWithObjects:
                   [[NSArray alloc] initWithObjects:@"Dirrecion de Envio", @"Av Paseo de la Reforma, No 145, Col. Juarez, Mexico, D.F", nil],
                   [[NSArray alloc] initWithObjects:@"Cuenta de Banco", @"HSBC XXXX-XXXX-XXXX-1894, Abril/2015", nil],
                   nil] ;
    
    if ([_type isEqual:@"NEW"]) 
    {
        [_addresUser setHidden:YES];
        [_imgLoyalty setHidden:NO];

    }
    else
    {
        [_addresUser setHidden:NO];
        [_imgLoyalty setHidden:YES];
    }
    if ([UserService infoUser]!= nil)
    {
        [_loyaltyUser setOn:YES];
        if ([[UserService infoUser] count]>3)
        {
            [_firstNameUser setText:[[UserService infoUser] objectAtIndex:0]];
            [_lastNameUser setText:[[UserService infoUser] objectAtIndex:1]];
            [_emailUser setText:[[UserService infoUser] objectAtIndex:2]];
            if ([[[UserService infoUser] objectAtIndex:2] isEqual:@"NO"])
            {
                [_loyaltyUser setOn:NO];
   
            }
        }
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

-(IBAction)registerUser:(id)sender
{
    if (![[_firstNameUser text] isEqual:@""]
        && ![[_lastNameUser text] isEqual:@""]
        && ![[_emailUser text] isEqual:@""])
    {
        NSString *loyalty = @"NO";
        if ([_loyaltyUser isOn]) 
        {
            loyalty = @"YES";
        }
        [UserService setInfoUser:[[NSArray alloc] initWithObjects:[_firstNameUser text],[_lastNameUser text],[_emailUser text], loyalty, nil]]; 
        if ([_type isEqual:@"NEW"]) {
            HomeViewController *homeViewController = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
            [self presentModalViewController:homeViewController animated:YES];
        }
        [self dismissModalViewControllerAnimated:YES];
    }
    else
    {
        NSString *message = @"Informacion requerida incompleta, campos (*) Requeridos";
        UIAlertView *usageAlertView = [[UIAlertView alloc] initWithTitle:@"Registro" message:message delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
        [usageAlertView show];
    }
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    cell.textLabel.text = [[_detailsUser objectAtIndex:indexPath.row] objectAtIndex:0];
    cell.detailTextLabel.text = [[_detailsUser objectAtIndex:indexPath.row] objectAtIndex:1];
    
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_detailsUser count];
}

#pragma mark - View lifecycle
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
	if (textField == _phoneTextField) {
		
		[self moveToTopFields];

	}
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	if (textField == _firstNameUser ) {
		
		[_lastNameUser becomeFirstResponder];
		
	}
	else if (textField == _lastNameUser){
		
		[_emailUser becomeFirstResponder];
	}
	
	else if (textField == _emailUser){
		
		[_phoneTextField becomeFirstResponder];
		
	}
	
	else if (textField == _phoneTextField){
		
		[_phoneTextField resignFirstResponder];
		[self moveToTopOriginFields];
		
	}
	
	return NO;
}


-(IBAction)editingEnded:(id)sender
{
    [sender resignFirstResponder]; 
}

#pragma mark - Touches Handling

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	
	[_firstNameUser resignFirstResponder];
	[_lastNameUser resignFirstResponder];
	[_phoneTextField resignFirstResponder];
	[_emailUser resignFirstResponder];
	
	
	[self moveToTopOriginFields];
	
}

- (void) moveToTopFields
{
	[UIView animateWithDuration:1.5
						  delay:0.05
						options: UIViewAnimationCurveEaseOut
					 animations:^{
						 
						 [_contentView setFrame:CGRectMake(15,-18, _contentView.bounds.size.width, _contentView.bounds.size.height)];
						 
						 
						 
					 } 
					 completion:^(BOOL finished){
						 
					 }];
}

- (void) moveToTopOriginFields
{
	[UIView animateWithDuration:1.5
						  delay:0.05
						options: UIViewAnimationCurveEaseOut
					 animations:^{
						 
						 [_contentView setFrame:CGRectMake(15,35, _contentView.bounds.size.width,_contentView.bounds.size.height)];
						 
						 
						 
					 } 
					 completion:^(BOOL finished){
						 
					 }];
}

@end
