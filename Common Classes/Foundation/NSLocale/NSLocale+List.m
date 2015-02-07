//
//  NSLocale+List.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSLocale+List.h"
#import "NSString+Formatting.h"

@implementation NSLocale (List)

+ (NSCache *)sharedCache
{
    static NSCache *_sharedCache;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedCache = [[NSCache alloc] init];
    });
    return _sharedCache;
}

+ (NSArray *)countryList
{
    //Cache the output as it generally won't change, and we don't want to be generating this a million times.
    static NSString *cacheKey = @"NSLocale/M13Toolkit/countryList";
    NSMutableArray *list = [[self sharedCache] objectForKey:cacheKey];
    
    if (!list) {
        NSArray *codes = [NSLocale ISOCountryCodes];
        list = [NSMutableArray arrayWithCapacity:[codes count]];
        for (id code in codes) {
            [list addObject:[[NSLocale currentLocale] displayNameForKey:NSLocaleCountryCode value:code]];
        }
        [[self sharedCache] setObject:list forKey:cacheKey];
    }
    
    return list;
}

+ (NSArray *)countryListSortedByName
{
    static NSString *cacheKey = @"NSLocale/M13Toolkit/countryListSortedByName";
    NSArray *list = [[self sharedCache] objectForKey:cacheKey];
    
    if (!list) {
        list = [[self countryList] sortedArrayUsingSelector:@selector(compare:)];
        if (list) {
            [[self sharedCache] setObject:list forKey:cacheKey];
        }
    }
    
    return list;
}

+ (NSArray *)countryListGroupedByFirstLetter
{
    static NSString *cacheKey = @"NSLocale/M13Toolkit/countryListGroupedByFirstLetter";
    NSMutableArray *list = [[self sharedCache] objectForKey:cacheKey];
    
    if (!list) {
        list = [NSMutableArray arrayWithCapacity:26];
        __block NSString *previousFirstLetter = nil;
        [[self countryListSortedByName] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSString *firstLetter = [[[obj substringToIndex:1] normalizedString] uppercaseString];
            if (![firstLetter isEqualToString:previousFirstLetter]) {
                [list addObject:[NSMutableArray array]];
            }
            [[list lastObject] addObject:obj];
            previousFirstLetter = firstLetter;
        }];
        
        [[self sharedCache] setObject:list forKey:cacheKey];
    }
    
    return list;
}

@end
