//
//  UIFont+List.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/8/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "UIFont+List.h"

@implementation UIFont (List)

+ (NSDictionary *)availableFontsByFamily
{
    NSMutableDictionary *dict = [NSMutableDictionary new];
    
    for (NSString *familyName in [UIFont familyNames]) {
        [dict setObject:[UIFont fontNamesForFamilyName:familyName] forKey:familyName];
    }
    
    return [dict copy];
}

@end
