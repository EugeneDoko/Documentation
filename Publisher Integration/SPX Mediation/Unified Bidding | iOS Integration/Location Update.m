/** CLLocationManagerDelegate method */
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    CLLocation *userLocation = locations.lastObject;
    if (userLocation) {
        SmaatoSDK.userLocation = [[SMALocation alloc] initWithLatitude:userLocation.coordinate.latitude
                                                             longitude:userLocation.coordinate.longitude
                                                    horizontalAccuracy:userLocation.horizontalAccuracy
                                                             timestamp:userLocation.timestamp];
    }
}