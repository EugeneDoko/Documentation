- (void)saveCCPAUsPrivacyString:(NSString *)usString
{
    if (usString.length > 0) {
        [NSUserDefaults.standardUserDefaults setObject:usString
forKey:@"IABUSPrivacy_String"];
    }
}