//
//  LoginViewControlleriPhone.h
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/21/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserService.h"

@interface LoginViewControlleriPhone : UIViewController<UITextFieldDelegate>
{
	IBOutlet UIView *_contentView;
}

@property(nonatomic, strong)IBOutlet UITextField *emailUser;

@property(nonatomic, strong)IBOutlet UITextField *passUser;

-(IBAction)presentHomeView:(id)sender;
-(IBAction)presentRegisterView:(id)sender;
- (void) moveToTopFields;
- (void) moveToTopOriginFields;


@end
