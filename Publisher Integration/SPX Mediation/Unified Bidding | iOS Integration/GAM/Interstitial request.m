__block GAMInterstitialAd *interstitial;
    [SmaatoSDK prebidInterstitialForAdSpaceId:@"SMAATO_ADSPACE_ID" completion:^(SMAUbBid * _Nullable bid, NSError * _Nullable error) {
        if (bid) {
            // Let's assume this is the max price of your line items (you will want to change this float to yours)
            CGFloat maxPrice = 0.1;
            NSString *bidKeyword;
 
            // Helper to format bidKeyword if the received bid price is greater than max price. In this case, just add smaato_cpm prefix to the maxPrice (formatted value to the required fraction digits).
            if (bid.bidPrice > maxPrice) {
                bidKeyword = [NSString stringWithFormat:@"smaato_cpm:%.2f", maxPrice];
            } else {
                bidKeyword = bid.targetPrebidKeyword;
            }
            GAMRequest *kvpRequest = [[GAMRequest alloc] init];
            NSDictionary<NSString *, NSString *> *ubKVP = [[NSDictionary alloc] initWithObjectsAndKeys:@"smaub", bidKeyword, nil];  // make sure you add "smaub" as a Dynamic Key under Inventory >> Key-Values inside of GAM (no value as you will pass that here)
 
            kvpRequest.customTargeting = ubKVP;
            [GAMInterstitialAd loadWithAdManagerAdUnitID:@"YOUR_GAM_AD_UNIT_ID" request:kvpRequest completionHandler:^(GAMInterstitialAd * _Nullable interstitialAd, NSError * _Nullable error) {
                if (error) {
                    NSLog(@"Failed to load interstitial ad with error: \(error.localizedDescription)");
                    return;
                }
                interstitial = interstitialAd;
                interstitial.fullScreenContentDelegate = self;
            }];
        }
    }];