//
//  NSArray+CreateWithData.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (CreateWithData)

/**
 Creates an array from the given NSData.
 
 @param data  The data to create an array from.
 @param error The error that occured if any.
 
 @return A new array object.
 */
+ (NSArray *)arrayWithContentsOfData:(NSData *)data error:(NSError **)error;

@end
