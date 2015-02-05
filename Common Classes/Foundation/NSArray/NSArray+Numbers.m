//
//  NSArray+Numbers.m
//  M13Toolkit
/*Copyright (c) 2015 Brandon McQuilkin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

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
