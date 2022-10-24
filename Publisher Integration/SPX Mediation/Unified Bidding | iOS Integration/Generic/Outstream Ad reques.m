SMAOutstreamView *outstreamView = [[SMAOutstreamView alloc]init];
    [SmaatoSDK prebidOutstreamForAdSpaceId:@"SMAATO_ADSPACE_ID"
                             bannerSize:kSMAUbBannerSizeXXLarge_320x50
                                completion:^(SMAUbBid *_Nullable bid, NSError *_Nullable error) {
         
        if (bid && bid.metaData[@"smaato_ubid"]) {
            NSString *ubId = bid.metaData[@"smaato_ubid"];
            SMAAdRequestParams *requestParam = [[SMAAdRequestParams alloc] init];
            requestParam.ubUniqueId = ubId;
             
            outstreamView.delegate = self;
            [outstreamView loadWithAdSpaceId:@"SMAATO_ADSPACE_ID" adSize:kSMABannerAdSizeMediumRectangle_300x250 requestParams:requestParam];
             
        } else {
            return;
        }
    }];