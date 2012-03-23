//
//  StoresViewControlleriPad.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 21/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "StoresViewControlleriPad.h"

@implementation StoresViewControlleriPad
@synthesize storesMapView = _storesMapView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	NSMutableArray* annotations=[[NSMutableArray alloc] init];
	
	CLLocationCoordinate2D theCoordinate1;
    theCoordinate1.latitude = 19.402064;
    theCoordinate1.longitude = -99.166106;
	
	CLLocationCoordinate2D theCoordinate2;
    theCoordinate2.latitude =19.399836;
    theCoordinate2.longitude = -99.276592;
	
	CLLocationCoordinate2D theCoordinate3;
    theCoordinate3.latitude = 19.399776;
    theCoordinate3.longitude = -99.276323;
	
	CLLocationCoordinate2D theCoordinate4;
    theCoordinate4.latitude = 19.399776;
    theCoordinate4.longitude = -99.276323;
	
	MacStorePinAnotation* myAnnotation1=[[MacStorePinAnotation alloc] init];
	
	myAnnotation1.coordinate=theCoordinate1;
	myAnnotation1.title=@"MacStore Masaryk";
	myAnnotation1.subtitle=@"Presidente Masaryk 419";
	
	MacStorePinAnotation* myAnnotation2=[[MacStorePinAnotation alloc] init];
	
	myAnnotation2.coordinate=theCoordinate2;
	myAnnotation2.title=@"MacStore Dakota";
	myAnnotation2.subtitle=@"Plaza Dakota # 95";
	
	MacStorePinAnotation* myAnnotation3=[[MacStorePinAnotation alloc] init];
	
	myAnnotation3.coordinate=theCoordinate3;
	myAnnotation3.title=@"MagnoCentro";
	myAnnotation3.subtitle=@" Boulevard Magnocentro ";
	
	MacStorePinAnotation* myAnnotation4=[[MacStorePinAnotation alloc] init];
	
	myAnnotation4.coordinate=theCoordinate4;
	myAnnotation4.title=@" MacStore Altavista ";
	myAnnotation4.subtitle=@"Altavista 95, Alvaro Obregon";
	
	[_storesMapView addAnnotation:myAnnotation1];
	[_storesMapView addAnnotation:myAnnotation2];
	[_storesMapView addAnnotation:myAnnotation3];
	[_storesMapView addAnnotation:myAnnotation4];
	
	[annotations addObject:myAnnotation1];
	[annotations addObject:myAnnotation2];
	[annotations addObject:myAnnotation3];
	[annotations addObject:myAnnotation4];
	
	NSLog(@"%d",[annotations count]);	
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight );

}

#pragma mark - mapview delegate 

- (void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
	MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.05;
    span.longitudeDelta = 0.05;
    CLLocationCoordinate2D location;
    location.latitude = userLocation.coordinate.latitude;
    location.longitude = userLocation.coordinate.longitude;
    region.span = span;
    region.center = location;
    [_storesMapView setRegion:region animated:YES];
}

- (MKAnnotationView *)mapView:(MKMapView *)map viewForAnnotation:(id <MKAnnotation>)annotation
{
    static NSString *AnnotationViewID = @"annotationViewID";
	
    MKAnnotationView *annotationView = (MKAnnotationView *)[_storesMapView dequeueReusableAnnotationViewWithIdentifier:AnnotationViewID];
	
    if (annotationView == nil)
    {
        annotationView = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:AnnotationViewID];
    }
	
	
	if ([annotation isKindOfClass:[MacStorePinAnotation class]]) {
		annotationView.image = [UIImage imageNamed:@"pin.png"];
		annotationView.annotation = annotation;
		annotationView.canShowCallout = YES;
		
		
		return annotationView;
	}
	else{
	    return nil;
	}
    
	
}

@end
