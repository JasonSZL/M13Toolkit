//
//  NSArray+Numbers.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

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
