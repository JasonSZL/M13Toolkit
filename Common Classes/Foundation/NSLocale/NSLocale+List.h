//
//  NSLocale+List.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSLocale (List)

/**@name Countries*/

/**
The list of countries in human readable form.

@return A list of country names in string form.
*/
+ (NSArray *)countryList;

/**
 The list of countries in human readable form. Sorted to be in alphabetical order.
 
 @return A list of country names in string form.
 */
+ (NSArray *)countryListSortedByName;

/**
 An array of arrays that groups the countries by their first letter
 
 @return An array of arrays of country names in string form.
 */
+ (NSArray *)countryListGroupedByFirstLetter;

@end
