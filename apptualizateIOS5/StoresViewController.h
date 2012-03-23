//
//  StoresViewController.h
//  apptualizateIOS5
//
//  Created by Misael Pérez Chamorro on 3/21/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MacStorePinAnotation.h"


@interface StoresViewController : UIViewController <MKMapViewDelegate>
{
	IBOutlet MKMapView *storesMapView;
}

@property (nonatomic , strong) IBOutlet MKMapView *storesMapView;

@end
