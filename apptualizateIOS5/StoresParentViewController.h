//
//  StoresParentViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StoresViewController.h"

@interface StoresParentViewController : UIViewController
{
	UINavigationController *storesNavigationController;
	StoresViewController *storesViewController;
    
}

@property (nonatomic,strong) UINavigationController *storesNavigationController;
@property (nonatomic,strong) StoresViewController *storesViewController;

@end
