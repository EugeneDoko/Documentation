// Setting age and gender 
SmaatoSDK.userAge = 35
SmaatoSDK.userGender = .male
   
// Defining Key-value targeting 
let KVP = SMAKeyValuePairs()
KVP.setTargetingValues(["Demo", "Stage"], forKey: "Application") // replace with your key-value pairs configured on SPX site 
KVP.setTargetingValues(["iOS", "Android"], forKey: "OS") // replace with your key-value pairs configured on SPX site  
// Setting KV pairs for Banner request 
SMABannerView.keyValuePairs = KVP
   
// Prebid request 
SmaatoSDK.prebidBanner(forAdSpaceId: "adSpaceId",
                         bannerSize: .xxLarge_320x50) { (bidUnit, error) in
    //Loading MoPub ad
}