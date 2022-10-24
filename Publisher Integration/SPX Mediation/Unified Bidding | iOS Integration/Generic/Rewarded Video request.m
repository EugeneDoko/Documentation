[SmaatoSDK prebidRewardedInterstitialForAdSpaceId:@"SMAATO_ADSPACE_ID"
                                   completion:^(SMAUbBid *_Nullable bid, NSError *_Nullable error) {
         
        if (bid && bid.metaData[@"smaato_ubid"]) {
            NSString *ubId = bid.metaData[@"smaato_ubid"];
            SMAAdRequestParams *requestParam = [[SMAAdRequestParams alloc] init];
            requestParam.ubUniqueId = ubId;
             
            [SmaatoSDK loadRewardedInterstitialForAdSpaceId:@"SMAATO_ADSPACE_ID" delegate:self requestParams:requestParam];
             
        } else {
            return;
        }
    }];