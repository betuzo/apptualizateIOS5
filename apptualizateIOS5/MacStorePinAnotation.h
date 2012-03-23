//
//  MacStorePinAnotation.h
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/23/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MacStorePinAnotation : NSObject <MKAnnotation>
{
	CLLocationCoordinate2D coordinate;
	NSString * title;
	NSString * subtitle;
}

@property (nonatomic ,assign) CLLocationCoordinate2D coordinate;

@property (nonatomic ,copy) NSString * title;

@property (nonatomic ,copy) NSString * subtitle;




@end
