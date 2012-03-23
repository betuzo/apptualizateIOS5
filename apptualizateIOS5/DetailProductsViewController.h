//
//  DetailProductsViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailProductsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UIActionSheetDelegate>

@property (nonatomic, strong) NSArray *detailsProducts;

@property(nonatomic, strong)IBOutlet UILabel *nameProduct;

@property(nonatomic, strong)IBOutlet UILabel *descProduct;

@property(nonatomic, strong)IBOutlet UIImageView *imageProduct;

- (void)updateDetailByIndex:(NSInteger) index;

@end
