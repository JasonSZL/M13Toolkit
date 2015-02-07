//
//  NSString+Formatting.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/6/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSString+Formatting.h"

@implementation NSString (Formatting)

- (NSString *)normalizedString
{
    NSMutableString *result = [NSMutableString stringWithString:self];
    CFStringNormalize((__bridge CFMutableStringRef)result, kCFStringNormalizationFormD);
    CFStringFold((__bridge CFMutableStringRef)result, kCFCompareCaseInsensitive | kCFCompareDiacriticInsensitive | kCFCompareWidthInsensitive, NULL);
    return result;
}

@end
