var outstreamView = SMAOutstreamView()
        SmaatoSDK.prebidOutstream(forAdSpaceId: "SMAATO_ADSPACE_ID",bannerSize: .mediumRectangle_300x250) { [weak self] ubBid, error in
            guard let bid = ubBid ,
                  let bidId = bid.metaData["smaato_ubid"] as? String else {
                print("Bid has to be not nil")
                return
            }
            let params = SMAAdRequestParams()
            params.ubUniqueId = bidId
             
            outstreamView.delegate = self
            outstreamView.load(withAdSpaceId: "SMAATO_ADSPACE_ID",
                               outstreamAdSize: .medium_300x600,
                               requestParams: params)
        }