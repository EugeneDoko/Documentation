// AppDelegate.swift
import UIKit
import SmaatoSDKCore
import SmaatoSDKUnifiedBidding
  
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {  
    var window: UIWindow?
      
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
          
       // initialize SDK first!        
       guard let config = SMAConfiguration(publisherId:”<PUBLISHER_ID>”) else {
            fatalError(“SDK config is nil”)
       }
       config.httpsOnly = false    // allow both HTTPS & HTTP traffic        
       config.logLevel = .error    // log errors only
       config.maxAdContentRating = .undefined // ads content restriction based on age         
       
       SmaatoSDK.initSDK(withConfig: config)
       SmaatoSDK.gpsEnabled = true // allow the Smaato SDK to automatically get the user's location and put it inside the ad request  
       return true
    }
}