//
//  ProductsCellViewController.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "ProductsCellViewController.h" 

@implementation ProductsCellViewController

@synthesize nameProduct = _nameProduct;

@synthesize descProduct = _descProduct;

@synthesize imageProduct = _imageProduct;

@synthesize detailProduct = _detailProduct;


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

- (void)drawRect:(CGRect)rect
{
    NSLog(@"drawRect");
    
    CGContextRef context = UIGraphicsGetCurrentContext();
	
	// Fill in the background
	CGContextSetFillColorWithColor(context, graphBackgroundColor());
	CGContextFillRect(context, self.bounds);
	
	CGContextTranslateCTM(context, 0.0, 56.0);
    
	// Draw the grid lines
	DrawGridlines(context, 26.0, 6.0);
    
}

@end
