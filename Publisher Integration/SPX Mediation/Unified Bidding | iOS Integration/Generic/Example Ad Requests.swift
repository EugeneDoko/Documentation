var bannerView = SMABannerView()
         
        SmaatoSDK.prebidBanner(forAdSpaceId: "SMAATO_ADSPACE_ID",
                               bannerSize: .mediumRectangle_300x250) { [unowned self] (ubBid, error) in
            guard let bid = ubBid ,
                  let bidId = bid.metaData["smaato_ubid"] as? String else {
                return
            }
             
            let requestParams = SMAAdRequestParams()
            requestParams.ubUniqueId = bidId
             
            bannerView.delegate = self
            bannerView.load(withAdSpaceId: "SMAATO_ADSPACE_ID",
                            adSize: .mediumRectangle_300x250,
                            requestParams: requestParams)
        }