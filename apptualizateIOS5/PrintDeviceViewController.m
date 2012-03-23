//
//  PrintDeviceViewController.m
//  apptualizateIOS5
//
//  Created by Cristhian Velazco Solano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "PrintDeviceViewController.h"

@interface PrintDeviceViewController ()

@end

@implementation PrintDeviceViewController
@synthesize labelPrintDevice;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{

    [self setLabelPrintDevice:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)textPrintDevice:(UITextField *)sender {
    NSString *title=[sender text];
    labelPrintDevice.text=title;
}
-(IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}
@end
