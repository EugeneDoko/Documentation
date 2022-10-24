SmaatoSDK.prebidRewardedInterstitial(forAdSpaceId: "SMAATO_ADSPACE_ID") { [unowned self] (ubBid, error) in
            guard let bid = ubBid,
                  let bidId = bid.metaData["smaato_ubid"] as? String else {
                return
            }
            let requestParams = SMAAdRequestParams()
            requestParams.ubUniqueId = bidId
            SmaatoSDK.loadRewardedInterstitial(forAdSpaceId: "SMAATO_ADSPACE_ID",
                                               delegate: self,
                                               requestParams: requestParams)
        }