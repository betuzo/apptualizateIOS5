//
//  FeaturedParentViewController.h
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/21/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeaturedViewController.h"

@interface FeaturedParentViewController : UIViewController
{
	UINavigationController *featuredProdcutsNavigationController;
	FeaturedViewController *featuredViewController;

}

@property (nonatomic,strong) UINavigationController *featuredProdcutsNavigationController;
@property (nonatomic,strong) FeaturedViewController *featuredViewController;

@end
