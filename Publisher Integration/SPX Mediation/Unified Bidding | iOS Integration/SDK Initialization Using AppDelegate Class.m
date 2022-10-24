// AppDelegate.m
#import "AppDelegate.h"
  
@import SmaatoSDKCore;
@import SmaatoSDKUnifiedBidding;
 
@implementation AppDelegate
  
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // initialize SDK first!    
    SMAConfiguration *config = [[SMAConfiguration alloc] initWithpublisherId:@”<PUBLISHER_ID>”];
    config.httpsOnly = NO;               // allow both HTTPS & HTTP traffic    
    config.logLevel = kSMALogLevelError; // log errors only
    config.maxAdContentRating = kSMAMaxAdContentRatingUndefined; // ads content restriction based on age   
     
    [SmaatoSDK initSDKWithConfig:config];
    SmaatoSDK.gpsEnabled = YES;          // allow the Smaato SDK to automatically get the user's location and put it inside the ad request
    return YES;
}
  
@end