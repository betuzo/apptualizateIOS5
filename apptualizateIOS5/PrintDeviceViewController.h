//
//  PrintDeviceViewController.h
//  apptualizateIOS5
//
//  Created by Cristhian Velazco Solano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrintDeviceViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *labelPrintDevice;
- (IBAction)textPrintDevice:(UITextField *)sender;
-(IBAction)textFieldDoneEditing:(id)sender;
@end
