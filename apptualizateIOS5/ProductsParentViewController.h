//
//  ProductsParentViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductsViewController.h"

@interface ProductsParentViewController : UIViewController
{
	UINavigationController *productsNavigationController;
	ProductsViewController *productsViewController;
    
}

@property (nonatomic,strong) UINavigationController *productsNavigationController;
@property (nonatomic,strong) ProductsViewController *productsViewController;
@end
