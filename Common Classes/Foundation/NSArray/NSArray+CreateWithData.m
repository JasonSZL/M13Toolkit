//
//  NSArray+CreateWithData.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSArray+CreateWithData.h"

@implementation NSArray (CreateWithData)

+ (NSArray *)arrayWithContentsOfData:(NSData *)data error:(NSError *__autoreleasing *)error
{
    //Attempt to create the array
    CFErrorRef parseError = NULL;
    NSArray *array = (__bridge_transfer NSArray *)CFPropertyListCreateWithData(kCFAllocatorDefault, (__bridge CFDataRef)data, kCFPropertyListImmutable, NULL, (CFErrorRef *)&parseError);
    
    //Do we have an array?
    if ([array isKindOfClass:[NSArray class]]) {
        return array;
    }
    
    //Is there an error?
    if (parseError) {
        if (error) {
            *error = (__bridge NSError *)(parseError);
        }
        CFRelease(parseError);
    }
    return nil;
}

@end
