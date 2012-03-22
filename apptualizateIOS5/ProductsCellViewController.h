//
//  ProductsCellViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductsCellViewController : UITableViewCell

@property(nonatomic, strong)IBOutlet UILabel * nameProduct;

@property(nonatomic, strong)IBOutlet UILabel * descProduct;

@property(nonatomic, strong)IBOutlet UIImageView * imageProduct;

@property(nonatomic, strong)IBOutlet UIButton * detailProduct;

@end
