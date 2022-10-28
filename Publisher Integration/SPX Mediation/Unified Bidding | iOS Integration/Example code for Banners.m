// Setting age and gender 
SmaatoSDK.userGender = kSMAGenderFemale;
SmaatoSDK.userAge = @30;
 
// Let's create and set targeting parameters 
SMAKeyValuePairs *KVP = [SMAKeyValuePairs new];
[KVP setTargetingValue:@"30" forKey:@"Age"]; // replace with your key-value pairs configured on SPX site 
[KVP setTargetingValues:@[@"Demo", @"Stage"] forKey:@"Application"]; // replace with your key-value pairs configured on SPX site   
// Setting KV pairs for Banner request 
SMABannerView.keyValuePairs = KVP;
 
// Prebid request 
[SmaatoSDK prebidBannerForAdSpaceId:@<SMAATO_ADSPACE_ID>"
                         bannerSize:kSMAUbBannerSizeXXLarge_320x50
                         completion:^(SMAUbBid *_Nullable bid, NSError *_Nullable error) {
     //Loading AdMob ad                              
}];
