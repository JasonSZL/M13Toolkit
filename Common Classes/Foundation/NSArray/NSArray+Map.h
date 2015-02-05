//
//  NSArray+Map.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Map)

/**
 Iterate through the receiver, running the block on each object and returning an array of the changed objects.
 
 @param A block that passes in each object and returns a modified object
 
 @return An array of modified elements
 */
- (NSArray *)arrayByMappingBlockToObjects:(id(^)(id obj, NSUInteger idx))block;

@end

@interface NSMutableArray (Map)

/**
 Iterate through the receiver, running the block on each object and replacing that object with the object returned from the block.
 
 @param A block that passes in each object and returns a modified object
 */
- (void)map:(id(^)(id obj, NSUInteger idx))block;

@end