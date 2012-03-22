//
//  FeaturedViewController.h
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/21/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeaturedViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
}

@property (nonatomic, strong) NSArray *featuredProducts;
@end
