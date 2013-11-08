//
//  MyGPSLoggerViewController.m
//  MyGpsLogger
//
//  Created by Shuichi Yoshino on 2013/10/01.
//  Copyright (c) 2013年 Shuichi Yoshino. All rights reserved.
//

#import "MyGPSLoggerViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface MyGPSLoggerViewController ()

@end

@implementation MyGPSLoggerViewController
{
    GMSMapView *mapView_;
}

// You don't need to modify the default initWithNibName:bundle: method.

- (void)loadView {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:35.604349
                                                            longitude:139.723434
                                                                 zoom:18];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    //mapView_.mapType = kGMSTypeHybrid;
    mapView_.settings.myLocationButton = YES;
    self.view = mapView_;
    
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(35.604349, 139.723434);
    marker.title = @"自宅";
    marker.snippet = @"二葉2丁目";
    marker.icon = [UIImage imageNamed:@"tokyo_tower64.png"];
    
    marker.map = mapView_;

}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
