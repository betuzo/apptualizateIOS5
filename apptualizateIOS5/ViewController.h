//
//  ViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewControlleriPhone.h"
#import "LoginViewControlleriPad.h"

@interface ViewController : UIViewController
{
	LoginViewControlleriPhone *loginViewiPohone;
	LoginViewControlleriPad *loginViewiPad;
}

@property (nonatomic,strong) LoginViewControlleriPhone *loginViewiPhone;
@property (nonatomic,strong) LoginViewControlleriPad *loginViewiPad;

@end
