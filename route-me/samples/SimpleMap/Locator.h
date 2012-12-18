//
//  CoreLocation.h
//  SimpleMap
//
//  Created by Damkoeng Boonkoed on 11/28/55 BE.
//
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Locator : NSObject <CLLocationManagerDelegate>

/*@property (nonatomic, retain) CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet UITextView *locationDescription;
@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *speedLabel;*/

@property(strong, nonatomic) CLLocationManager *locationManager;
@property(strong, nonatomic) NSString *locationDescription;
@property(readwrite, nonatomic) float latitude;
@property(readwrite, nonatomic) float longitude;

- (void)startUpdatingLocation;


@end
