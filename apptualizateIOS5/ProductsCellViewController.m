//
//  ProductsCellViewController.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "ProductsCellViewController.h" 

#pragma mark - Quartz Helpers




// Functions used to draw all content

@implementation ProductsCellViewController

@synthesize nameProduct = _nameProduct;

@synthesize descProduct = _descProduct;

@synthesize imageProduct = _imageProduct;

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
    
    int y = 0;
    int x = 0;
    
  
    CGContextMoveToPoint(context, x, y);
    CGContextAddLineToPoint(context, x +320, y);
	
    
    CGColorSpaceRef gray = CGColorSpaceCreateDeviceGray();
	CGFloat comps[] = {0.5, 1.0 };
	CGColorRef color = CGColorCreate(gray, comps);
	CGColorSpaceRelease(gray);
	    
	CGContextSetStrokeColorWithColor(context, color);
	CGContextStrokePath(context);
    
}

@end
