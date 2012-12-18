//
//  CoreLocation.m
//  SimpleMap
//
//  Created by Damkoeng Boonkoed on 11/28/55 BE.
//
//

#import "Locator.h"

@implementation Locator

@synthesize locationManager = _locationManager;

- (CLLocationManager *)locationManager{
    if (_locationManager != nil) {
        return _locationManager;
    }
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    return _locationManager;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"%@ called (Locator)", NSStringFromSelector(_cmd));
    // locations is an array : [0|1|2| ... |n]
    //
    
    CLLocation* location = [locations objectAtIndex:0];
    
    self.latitude = location.coordinate.latitude;
    self.longitude = location.coordinate.longitude;
    
    NSLog(@"lat: %f long: %f", self.latitude, self.longitude);
}

-(void)startUpdatingLocation{
    [self.locationManager startUpdatingLocation];
}

- (id)init{
    self = [super init];
    
    if(self != nil){
        _locationManager = [[CLLocationManager alloc] init];
        _locationManager.delegate = self;
    }
    return self;
}


@end
