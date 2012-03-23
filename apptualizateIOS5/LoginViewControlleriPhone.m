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
    HomeViewController *homeViewController = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    [self presentModalViewController:homeViewController animated:YES];
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
