//
//  NSMutableArray+MoveObject.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (MoveObject)

/**
 Moves the object at the given index to the new index.
 
 @param fromIndex The index of the object to move.
 @param toIndex   The index to insert the object. (This should be the index before the item is removed from the array. The object will be inserted between the same to objects regardless of whether the to index is before or after the from index.
 */
- (void)moveObjectAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex;

@end
