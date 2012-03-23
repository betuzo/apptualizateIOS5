//
//  RegisterViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserService.h"
#import "HomeViewController.h"

@interface RegisterViewController : UIViewController<UITextFieldDelegate>

@property(nonatomic, strong)IBOutlet UITextField *firstNameUser;

@property(nonatomic, strong)IBOutlet UITextField *lastNameUser;

@property(nonatomic, strong)IBOutlet UITextField *emailUser;

@property(nonatomic, strong)IBOutlet UISwitch *loyaltyUser;

-(IBAction)registerUser:(id)sender;

-(IBAction)editingEnded:(id)sender;

@end
