SMABannerView *bannerView = [[SMABannerView alloc]init];
[SmaatoSDK prebidBannerForAdSpaceId:@"SMAATO_ADSPACE_ID" bannerSize:kSMAUbBannerSizeMediumRectangle_300x250 completion:^(SMAUbBid * _Nullable bid, NSError * _Nullable error) {
         
        if (bid && bid.metaData[@"smaato_ubid"]) {
            NSString *ubId = bid.metaData[@"smaato_ubid"];
            SMAAdRequestParams *requestParam = [[SMAAdRequestParams alloc] init];
            requestParam.ubUniqueId = ubId;
             
            bannerView.delegate = self;
            [bannerView loadWithAdSpaceId:@"SMAATO_ADSPACE_ID" adSize:kSMABannerAdSizeMediumRectangle_300x250 requestParams:requestParam];
             
        } else {
            return;
        }
    }];