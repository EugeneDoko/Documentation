SmaatoSDK.prebidNative(forAdSpaceId: "SMAATO_ADSPACE_ID") {[weak self] ubBid, error in
             
            guard let bid = ubBid ,
                  let bidId = bid.metaData["smaato_ubid"] as? String,
                  let nativeAdRequest = SMANativeAdRequest(adSpaceId:  "SMAATO_ADSPACE_ID") else {
                return
            }
             
            let nativeAd = SMANativeAd()
            nativeAd.delegate = self
             
            let comps = bidId.components(separatedBy: ":")
            if comps.count > 1 {
                let params = SMAAdRequestParams()
                params.ubUniqueId = comps.last
                nativeAd.load(with: nativeAdRequest, requestParams: params)
            } else {
                nativeAd.load(with: nativeAdRequest)
            }
        }