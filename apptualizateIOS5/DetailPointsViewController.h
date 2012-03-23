//
//  DetailPointsViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 23/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PuntosCellViewController.h"

@interface DetailPointsViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong,nonatomic) NSArray *listData;

@property(nonatomic, strong)IBOutlet UILabel *nameItem;

@property(nonatomic, strong)IBOutlet UILabel *descItem;

@property(nonatomic, strong)IBOutlet UIImageView *imgItem;

@end
