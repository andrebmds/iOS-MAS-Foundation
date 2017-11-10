//
//  MASPush.m
//  MASFoundation
//
//  Copyright (c) 2017 CA. All rights reserved.
//
//  This software may be modified and distributed under the terms
//  of the MIT license. See the LICENSE file for details.
//

#import "MASPush.h"

#import "MASConstantsPrivate.h"
#import "MASPushService.h"

@implementation MASPush


# pragma mark - Properties

+ (BOOL)isBound
{
    return [[MASPushService sharedService] isBound];
}


+ (NSString *_Nullable)deviceToken
{
    return  [[MASPushService sharedService] deviceToken];
}


+ (void)clearDeviceToken
{
    [[MASPushService sharedService] clearDeviceToken];
}


+ (void)setDeviceTokenData:(NSData *_Nonnull)deviceTokenData
{
    NSString *deviceToken = [[NSString alloc] initWithFormat:@"%@",[[[deviceTokenData description] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]] stringByReplacingOccurrencesOfString:@" " withString:@""]];
    
    [[MASPushService sharedService] setDeviceToken:deviceToken];
}


+ (void)setDeviceToken:(NSString *_Nonnull)deviceToken
{
    [[MASPushService sharedService] setDeviceToken:deviceToken];
}


@end