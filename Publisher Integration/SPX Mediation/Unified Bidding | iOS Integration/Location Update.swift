/** CLLocationManagerDelegate method */
func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    guard let userLocation = locations.last else {
        return
    }
    SmaatoSDK.userLocation = SMALocation(latitude:userLocation.coordinate.latitude,
                                        longitude:userLocation.coordinate.longitude,
                               horizontalAccuracy:userLocation.horizontalAccuracy,
                                        timestamp:userLocation.timestamp)
}