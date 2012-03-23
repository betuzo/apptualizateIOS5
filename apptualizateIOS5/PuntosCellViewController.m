//
//  PuntosCellViewController.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 23/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "PuntosCellViewController.h"

@implementation PuntosCellViewController

@synthesize imgItem = _imgItem;

@synthesize descItem = _descItem;

@synthesize nameItem = _nameItem;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
