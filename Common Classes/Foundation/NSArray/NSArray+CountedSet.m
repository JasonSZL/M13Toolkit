//
//  NSArray+CountedSet.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSArray+CountedSet.h"

@implementation NSArray (CountedSet)

- (NSCountedSet *)countedSet
{
    return [[NSCountedSet alloc] initWithArray:self];
}

@end
