//
//  NSArray+CountedSet.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (CountedSet)

/**
 Creates a counted set from the array.
 
 @return A counted set containing the objects from the array.
 */
- (NSCountedSet *)countedSet;

@end
