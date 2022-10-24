[SmaatoSDK prebidNativeForAdSpaceId:@"SMAATO_ADSPACE_ID" completion:^(SMAUbBid * _Nullable bid, NSError * _Nullable error) {
         
        if (bid && bid.metaData[@"smaato_ubid"]) {
            NSString *ubId = bid.metaData[@"smaato_ubid"];
             
            SMANativeAd *nativeAd = [[SMANativeAd alloc] init];
            nativeAd.delegate = self;
            SMANativeAdRequest *adRequest = [[SMANativeAdRequest alloc] initWithAdSpaceId:@"SMAATO_ADSPACE_ID"];
             
            NSArray<NSString *> *comps = [ubId componentsSeparatedByString:@":"];
            if ([comps count] > 1) {
                 
                SMAAdRequestParams *requestParam = [[SMAAdRequestParams alloc] init];
                requestParam.ubUniqueId = [comps lastObject];
                [nativeAd loadWithAdRequest:adRequest requestParams:requestParam];
            } else {
                [nativeAd loadWithAdRequest:adRequest];
            }
             
        } else {
            return;
        }
    }];