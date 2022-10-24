@interface SmaatoSDK (UnifiedBidding)
 
/**
 The method sends prebid request for Banner Smaato ads
 
 @param adSpaceId       AdspaceId identifier assigned by Smaato. Unified Bidding support should be enabled for this AdspaceId in Smaato SPX.
                        Must not be \c nil
 @param bannerSize      The banner size to be returned. see \c SMAUbBannerSize
 @param completion      Callback is invoked, when prebid response processing has been finished.
                        `bid` or `error` values reflect state of Prebid request. Must not be \c nil.
 */
+ (void)prebidBannerForAdSpaceId:(NSString *_Nonnull)adSpaceId
                      bannerSize:(SMAUbBannerSize)bannerSize
                      completion:(void (^_Nonnull)(SMAUbBid *_Nullable bid, NSError *_Nullable error))completion;
 
/**
 The method sends prebid request for Interstitial Smaato ads
 
 @param adSpaceId       AdspaceId identifier assigned by Smaato. Unified Bidding support should be enabled for this AdspaceId in Smaato SPX.
                        Must not be \c nil
 @param completion      Callback is invoked, when prebid response processing has been finished.
                        `bid` or `error` values reflect state of Prebid request. Must not be \c nil.
 */
+ (void)prebidInterstitialForAdSpaceId:(NSString *_Nonnull)adSpaceId
                            completion:(void (^_Nonnull)(SMAUbBid *_Nullable bid, NSError *_Nullable error))completion;
 
/**
 The method sends prebid request for Rewarded Interstitial Smaato ads
 
 @param adSpaceId       AdspaceId identifier assigned by Smaato. Unified Bidding support should be enabled for this AdspaceId in Smaato SPX.
                        Must not be \c nil
 @param completion      Callback is invoked, when prebid response processing has been finished.
                        `bid` or `error` values reflect state of Prebid request. Must not be \c nil.
 */
+ (void)prebidRewardedInterstitialForAdSpaceId:(NSString *_Nonnull)adSpaceId
                                    completion:(void (^_Nonnull)(SMAUbBid *_Nullable bid, NSError *_Nullable error))completion;
 
/**
 The method sends prebid request for Outstream Smaato ads
 
 @param adSpaceId               AdspaceId identifier assigned by Smaato. Unified Bidding support should be enabled for this AdspaceId in Smaato SPX.
                            Must not be \c nil
 @param bannerSize       The banner size to be returned. see \c SMAUbBannerSize. Must not be \c nil
 @param completion              Callback is invoked, when prebid response processing has been finished.
                            `bid` or `error` values reflect state of Prebid request. Must not be \c nil.
 */
+ (void)prebidOutstreamForAdSpaceId:(NSString *_Nonnull)adSpaceId
                         bannerSize:(SMAUbBannerSize)bannerSize
                         completion:(void (^_Nonnull)(SMAUbBid *_Nullable, NSError *_Nullable))completion;
 
/**
 The method sends prebid request for Native Smaato ads
 
 @param adSpaceId       AdspaceId identifier assigned by Smaato. Unified Bidding support should be enabled for this AdspaceId in Smaato SPX.
                        Must not be \c nil
 @param completion      Callback is invoked, when prebid response processing has been finished.
                        `bid` or `error` values reflect state of Prebid request. Must not be \c nil.
 */
+ (void)prebidNativeForAdSpaceId:(NSString *_Nonnull)adSpaceId completion:(void (^_Nonnull)(SMAUbBid *_Nullable, NSError *_Nullable))completion;
 
@end