//
//  LoyaltyViewController.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserService.h"
#import "PuntosCellViewController.h"
#import "RegisterViewController.h"
#import "DetailPointsViewController.h"

@interface LoyaltyViewController : UIViewController <UITableViewDelegate,UITableViewDataSource, UIActionSheetDelegate>

@property (strong,nonatomic) NSArray *listData;

@property(nonatomic, strong)IBOutlet UILabel *fullNameUser;

@property(nonatomic, strong)IBOutlet UILabel *statusUser;

@property(nonatomic, strong)IBOutlet UISwitch *loyaltyUser;

-(IBAction)goToSettings:(id)sender;

@end
