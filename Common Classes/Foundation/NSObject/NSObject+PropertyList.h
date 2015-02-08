//
//  NSObject+PropertyList.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/8/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PropertyList)

/**
 Get the property list of the given class.
 
 @param class The class to get the property list of.
 
 @return A list of the properties of the class in NSString form.
 */
+ (NSArray *)listOfPropertiesOfClass:(Class)class;

/**
 Get the property list of the given class and superclasses up to the given superclass.
 
 @param class The class to get the property list of.
 @param superclass The class at which to stop retreving the properties of.
 
 @return A list of the properties of the class in NSString form.
 */
+ (NSArray *)listOfPropertiesOfClass:(Class)class untilSuperclass:(Class)superclass;

/**
 Get a NSDictionary object that contains the keys and values for the properties of the receiver.
 
 @return A dictionary with the values and keys of the properties of the receiver.
 */
- (NSDictionary *)dictionaryWithValuesOfProperties;

/**
 Get all the properties of the given class in a form similar to NSLog.
 
 @return The string listing all the properties of the object.
 */
- (NSString *)fullDescription;

@end
