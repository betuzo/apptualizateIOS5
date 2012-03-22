//
//  ShopParentViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShopViewController.h"

@interface ShopParentViewController : UIViewController
{
	UINavigationController *shopNavigationController;
	ShopViewController *shopViewController;
    
}

@property (nonatomic,strong) UINavigationController *shopNavigationController;
@property (nonatomic,strong) ShopViewController *shopViewController;
@end
