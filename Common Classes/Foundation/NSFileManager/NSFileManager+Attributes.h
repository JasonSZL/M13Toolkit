//
//  NSFileManager+Attributes.h
//  M13Toolkit
/*Copyright (c) 2015 Brandon McQuilkin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import <Foundation/Foundation.h>

@interface NSFileManager (Attributes)

/**@name Item Attributes*/
/**
 Get the creation date of the item at the given path.
 
 @param path  The path of the item to get the creation date of.
 @param error The error if any.
 
 @return The creation data of the item at the given path.
 */
- (NSDate *)creationDateForItemAtPath:(NSString *)path error:(NSError **)error;

/**
 Adds the skip backup attribute to the item at the given path.
 
 @param path The path that should not be backed up.
 
 @return Wether or not the attribute was added.
 */
- (BOOL)addSkipBackupAttributeToItemAtPath:(NSString *)path;


@end
