//
//  NSMutableArray+MoveObject.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSMutableArray+MoveObject.h"

@implementation NSMutableArray (MoveObject)

- (void)moveObjectAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex
{
    id object = [self objectAtIndex:fromIndex];
    [self removeObjectAtIndex:fromIndex];
    if (fromIndex < toIndex) {
        [self insertObject:object atIndex:toIndex - 1];
    } else {
        [self insertObject:object atIndex:toIndex];
    }
}

@end
