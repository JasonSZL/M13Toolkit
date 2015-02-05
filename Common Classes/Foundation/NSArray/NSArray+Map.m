//
//  NSArray+Map.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSArray+Map.h"

@implementation NSArray (Map)

- (NSArray *)arrayByMappingBlockToObjects:(id(^)(id obj, NSUInteger idx))block
{
    NSMutableArray *mapped = [[NSMutableArray alloc] initWithCapacity:self.count];
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [mapped replaceObjectAtIndex:idx withObject:block(obj, idx)];
    }];
    
    return [mapped copy];
}

@end

@implementation NSMutableArray (Map)

- (void)map:(id(^)(id obj, NSUInteger idx))block
{
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [self replaceObjectAtIndex:idx withObject:block(obj, idx)];
    }];
}

@end