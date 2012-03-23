//
//  LoyaltyParentViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoyaltyViewController.h"

@interface LoyaltyParentViewController : UIViewController
{
	UINavigationController *loyaltyNavigationController;    
}

@property (nonatomic,strong) UINavigationController *loyaltyNavigationController;
@end
