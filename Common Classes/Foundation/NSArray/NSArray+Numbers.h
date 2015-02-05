//
//  NSArray+Numbers.h
//  M13Toolkit
/*Copyright (c) 2015 Brandon McQuilkin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import <Foundation/Foundation.h>
#import <CoreGraphics/CGGeometry.h>

@interface NSArray (Numbers)

/**
 Creates an array of NSNumber objects representing the integers in the given range.
 
 @param range The range of integers to create.
 
 @return An array of ordered NSNumber objects representing integers.
 */
+ (NSArray *)arrayWithIntegersInRange:(NSRange)range;

/**
 Creates an array of NSNumber objects representing the integers in the given range with each next number increasing by the given delta.
 
 @param range The range of integers to create.
 @param delta The difference between one number and the next.
 
 @return An array of NSNumber objects representing integers.
 */
+ (NSArray *)arrayWithIntegersInRange:(NSRange)range delta:(NSUInteger)delta;

/**
 Creates an array of integers using the function in the given block. The block is passed a domain value and is expected to return a value. The domain values passed to the block will be integers in the specified range and differ by the amount delta.
 
 @param range The domain of integers.
 @param delta The difference between indivual domain values passed to the block.
 @param block The function that will return a value based on the given domain.
 
 @return An array of NSNumber objects representing integers.
 */
+ (NSArray *)arrayWithIntegersInRange:(NSRange)range delta:(NSUInteger)delta usingBlock:(NSInteger(^)(NSUInteger input))block;

/**
 Creates an array of NSNumber objects representing floats in the given range each differing by the amount delta.
 
 @param range The range of floats to create.
 @param delta The difference between one number and the next.
 
 @return An array of ordered NSNumber objects representing floats.
 */
+ (NSArray *)arrayWithFloatsInRange:(NSRange)range delta:(CGFloat)delta;

/**
 Creates an array of floats using the function in the given block. The block is passed a domain value and is expected to return a value. The domain values passed to the block will be floats in the specified range and differ by the amount delta.
 
 @param range The domain of floats.
 @param delta The difference between indivual domain values passed to the block.
 @param block The function that will return a value based on the given domain.
 
 @return An array of NSNumber objects representing floats.
 */
+ (NSArray *)arrayWithFloatsInRange:(NSRange)range delta:(CGFloat)delta usingBlock:(CGFloat(^)(CGFloat domain))block;

/**
 Creates an array of NSNumber objects representing doubles in the given range each differing by the amount delta.
 
 @param range The range of doubles to create.
 @param delta The difference between one number and the next.
 
 @return An array of ordered NSNumber objects representing floats.
 */
+ (NSArray *)arrayWithDoublesInRange:(NSRange)range delta:(double)delta;

/**
 Creates an array of doubles using the function in the given block. The block is passed a domain value and is expected to return a value. The domain values passed to the block will be doubles in the specified range and differ by the amount delta.
 
 @param range The domain of doubles.
 @param delta The difference between indivual domain values passed to the block.
 @param block The function that will return a value based on the given domain.
 
 @return An array of NSNumber objects representing doubles.
 */
+ (NSArray *)arrayWithDoublesInRange:(NSRange)range delta:(double)delta usingBlock:(double(^)(NSUInteger domain))block;

@end
