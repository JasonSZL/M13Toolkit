//
//  NSObject+PropertyList.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/8/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSObject+PropertyList.h"
#import <objc/runtime.h>

@implementation NSObject (PropertyList)

+ (NSArray *)listOfPropertiesOfClass:(Class)aClass
{
    //Get the propety list
    unsigned int propertyCount = 0;
    objc_property_t * properties = class_copyPropertyList(aClass, &propertyCount);
    
    //Convert it to array form
    NSMutableArray * propertyNames = [NSMutableArray array];
    for (unsigned int i = 0; i < propertyCount; ++i) {
        [propertyNames addObject:[NSString stringWithUTF8String:property_getName(properties[i])]];
    }
    //Clean up
    free(properties);
    
    return [propertyNames copy];
}

+ (NSArray *)listOfPropertiesOfClass:(Class)aClass untilSuperclass:(Class)superclass
{
    //Get the class names in string form
    NSMutableArray * propertyNames = [NSMutableArray array];
    const char *untilClassName = class_getName(superclass);
    Class currentClass = aClass;
    const char *currentClassName = class_getName(currentClass);
    
    //Add the properties moving up the tree untill we reach the super class
    while (strcmp(untilClassName, currentClassName)) {
        [propertyNames addObjectsFromArray:[NSObject listOfPropertiesOfClass:currentClass]];
        currentClass = class_getSuperclass(currentClass);
        currentClassName = class_getName(currentClass);
    }
    
    return [NSArray arrayWithArray:propertyNames];
}

- (NSDictionary *)dictionaryWithValuesOfProperties
{
    //Create the dictionary to fill
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //Get all the keys
    NSArray *keys = [NSObject listOfPropertiesOfClass:[self class] untilSuperclass:[NSObject class]];
    
    //Fill the dictionary
    for (NSString *key in keys) {
        //Want it in value form so that we can insert it into a dictionary.
        id value = [self valueForKey:key];
        value = (value != nil) ? value : [NSNull null];
        [dict setObject:value forKey:key];
    }
    
    return [dict copy];
}

- (NSString *)fullDescription
{
    return [NSString stringWithFormat:@"<%@: %@> \nProperties: \n%@", NSStringFromClass([self class]), [NSString stringWithFormat:@"%p",self], [self dictionaryWithValuesOfProperties]];
}

@end
