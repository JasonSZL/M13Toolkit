//
//  UIFont+List.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/8/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (List)

/**
 Creates a dictionary with all the available font names sorted by family names.
 
 @return A dictionary with all the available font names sorted by family names.
 */
+ (NSDictionary *)availableFontsByFamily;

@end
