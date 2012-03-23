//
//  LoginViewControlleriPhone.m
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/21/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "LoginViewControlleriPhone.h"
#import "HomeViewController.h"
#import "RegisterViewController.h"

@implementation LoginViewControlleriPhone

@synthesize emailUser = _emailUser;

@synthesize passUser = _passUser;

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

-(IBAction)presentHomeView:(id)sender
{
    if (![[_passUser text] isEqual:@""]
        && ![[_emailUser text] isEqual:@""])
    {
        [UserService setInfoUser:[[NSArray alloc] initWithObjects:@"Alejandro", @"Santillan",[_emailUser text], @"YES", nil]]; 
        HomeViewController *homeViewController = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
        [self presentModalViewController:homeViewController animated:YES];
    }
    else
    {
        NSString *message = @"Introduzca su email y contraseña, por favor";
        UIAlertView *usageAlertView = [[UIAlertView alloc] initWithTitle:@"Iniciar Sesion" message:message delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
        [usageAlertView show];   
    }
}

-(IBAction)presentRegisterView:(id)sender
{
    //[UIView beginAnimations:@"View Flip" context:nil];
    //[UIView setAnimationDuration:1.25];
    //[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    NSLog(@"presentRegisterView");
    RegisterViewController *registerViewController = [[RegisterViewController alloc] initWithNibName:@"RegisterViewController" bundle:nil];
    
    [self presentModalViewController:registerViewController animated:NO];
    //[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
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

-(IBAction)editingEnded:(id)sender
{
    [sender resignFirstResponder]; 
}

@end
