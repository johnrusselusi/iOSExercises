//
//  LatitudeLongitudeViewController.m
//  CoreLocation
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "LatitudeLongitudeViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface LatitudeLongitudeViewController () <CLLocationManagerDelegate, MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *longitudeTable;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@property (nonatomic, strong) CLLocationManager *locationManager;
@property (nonatomic, strong) CLLocation *location;

@end

@implementation LatitudeLongitudeViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  self.locationManager = [[CLLocationManager alloc]init];
  self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
  [self.locationManager startUpdatingLocation];
  
  self.locationManager.delegate = self;
  self.location = [[CLLocation alloc]init];
  
  self.mapView = [[MKMapView alloc]init];
  self.mapView.showsUserLocation = YES;
}

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations{

  self.location = locations.lastObject;
  self.latitudeLabel.text = [NSString stringWithFormat:@"%f", self.location.coordinate.latitude];
  self.longitudeTable.text = [NSString stringWithFormat:@"%f", self.location.coordinate.longitude];
}

- (void)mapView:(MKMapView *)mapView
didUpdateUserLocation:(MKUserLocation *)userLocation{

  self.mapView.centerCoordinate = userLocation.location.coordinate;
}

@end
