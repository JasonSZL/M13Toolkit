//
//  NSString+Formatting.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/6/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Formatting)

/**
 Normalizes a string using CFStringNormalize.
 
 @return A normalized copy of the receiver.
 */
- (NSString *)normalizedString;

@end
