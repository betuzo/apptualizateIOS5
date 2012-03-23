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

-(IBAction)registerUser:(id)sender
{
    [UserService setInfoUser:[[NSArray alloc] initWithObjects:[_firstNameUser text],[_lastNameUser text],[_emailUser text],[_loyaltyUser isOn], nil]]; 
    [self dismissModalViewControllerAnimated:YES];
}

-(IBAction)editingEnded:(id)sender
{
    [sender resignFirstResponder]; 
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return NO;
}

@end
