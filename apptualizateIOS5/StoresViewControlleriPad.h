//
//  StoresViewControlleriPad.h
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MacStorePinAnotation.h"


@interface StoresViewControlleriPad : UIViewController <MKMapViewDelegate>
{
	IBOutlet MKMapView *storesMapView;
}

@property (nonatomic , strong) IBOutlet MKMapView *storesMapView;

@end
