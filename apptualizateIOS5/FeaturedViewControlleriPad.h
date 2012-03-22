//
//  FeaturedViewControlleriPad.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeaturedViewControlleriPad : UIViewController <UITableViewDelegate , UITableViewDataSource>
{
	IBOutlet UITableView *featuredTableViewController;
	IBOutlet UIImageView *productView;
}

@property (nonatomic,strong) IBOutlet UITableView *featuredTableViewController;  
@property (nonatomic, strong) NSArray *featuredProducts;
@property (nonatomic, strong) NSArray *imagesArray;
@property (nonatomic, strong) IBOutlet UIImageView *productView;



@end
