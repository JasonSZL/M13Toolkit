//
//  NSArray+Map.h
//  M13Toolkit
/*Copyright (c) 2015 Brandon McQuilkin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

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