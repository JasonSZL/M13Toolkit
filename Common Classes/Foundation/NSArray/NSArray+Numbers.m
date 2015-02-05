//
//  NSArray+Numbers.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSArray+Numbers.h"

@implementation NSArray (Numbers)

+ (NSArray *)arrayWithIntegersInRange:(NSRange)range
{
    NSMutableArray *output = [[NSMutableArray alloc] initWithCapacity:range.length];
    for (NSInteger i = range.location; i < range.location + range.length; i++) {
        [output addObject:@(i)];
    }
    return [output copy];
}

+ (NSArray *)arrayWithIntegersInRange:(NSRange)range delta:(NSUInteger)delta
{
    NSMutableArray *output = [NSMutableArray array];
    for (NSInteger i = range.location; i < range.location + range.length; i += delta) {
        [output addObject:@(i)];
    }
    return [output copy];
}

+ (NSArray *)arrayWithIntegersInRange:(NSRange)range delta:(NSUInteger)delta usingBlock:(NSInteger (^)(NSUInteger))block
{
    NSMutableArray *output = [NSMutableArray array];
    for (NSInteger i = range.location; i < range.location + range.length; i += delta) {
        [output addObject:@(block(i))];
    }
    return [output copy];
}

+ (NSArray *)arrayWithFloatsInRange:(NSRange)range delta:(CGFloat)delta
{
    NSMutableArray *output = [NSMutableArray array];
    for (CGFloat i = range.location; i < range.location + range.length; i += delta) {
        [output addObject:@(i)];
    }
    return [output copy];
}

+ (NSArray *)arrayWithFloatsInRange:(NSRange)range delta:(CGFloat)delta usingBlock:(CGFloat (^)(CGFloat))block
{
    NSMutableArray *output = [NSMutableArray array];
    for (CGFloat i = range.location; i < range.location + range.length; i += delta) {
        [output addObject:@(block(i))];
    }
    return [output copy];
}

+ (NSArray *)arrayWithDoublesInRange:(NSRange)range delta:(double)delta
{
    NSMutableArray *output = [NSMutableArray array];
    for (double i = range.location; i < range.location + range.length; i += delta) {
        [output addObject:@(i)];
    }
    return [output copy];
}

+ (NSArray *)arrayWithDoublesInRange:(NSRange)range delta:(double)delta usingBlock:(double (^)(NSUInteger))block
{
    NSMutableArray *output = [NSMutableArray array];
    for (double i = range.location; i < range.location + range.length; i += delta) {
        [output addObject:@(block(i))];
    }
    return [output copy];
}

@end
