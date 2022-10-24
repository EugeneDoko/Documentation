@interface SMAUbBid: NSObject
 
/**
 Adjusted bid price on the base of the chosen granularity of ad displaying
 */
@property (nonatomic, readonly) CGFloat bidPrice;
 
/**
 Optional helper method builds keyword for LineItem in a format "smaato_cpm:X.XX",
 where X.XX is adjusted bid price for LineItem.
 */
@property (nonatomic, copy, readonly, nonnull) NSString *targetPrebidKeyword;
 
/**
 Optional helper method provides metadata dictionary that allows to fetch related ad creative in case
 of bid prices auction win.
 Mopub best practice:
 A publisher should pass this data to `localExtras` property of Mopub `MPAdView` instance.
 */
@property (nonatomic, copy, readonly, nonnull) NSDictionary *metaData;
 
+ (null_unspecified instancetype)new NS_UNAVAILABLE;
- (null_unspecified instancetype)init NS_UNAVAILABLE;
 
@end
