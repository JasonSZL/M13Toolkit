//
//  NSFileManager+Paths.h
//  M13Toolkit
/*Copyright (c) 2015 Brandon McQuilkin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import <Foundation/Foundation.h>

@interface NSFileManager (Paths)

/**@name Directories and Paths*/

/**
Get the path to the application support directory.

@return The path to the application support directory.
*/
- (NSString *)applicationSupportDirectory;

/**
 Get the path to the application support directory and append a subpath.
 
 @param subpath The subpath to append to the application support directory.
 
 @return The path to the subpath in the application support directory.
 */
- (NSString *)applicationSupportDirectorySubpathByAppendingPath:(NSString *)subpath;

/**
 Get the path to the caches directory.
 
 @return The path to the caches directory.
 */
- (NSString *)cachesDirectory;

/**
 Get the path to the caches directory and append a subpath.
 
 @param subpath The subpath to append to the caches directory.
 
 @return The path to the subpath in the caches directory.
 */
- (NSString *)cachesDirectorySubpathByAppendingPath:(NSString *)subpath;

/**
 Get the path to the documents directory.
 
 @return The path to the documents directory.
 */
- (NSString *)documentsDirectory;

/**
 Get the path to the documents directory and append a subpath.
 
 @param subpath The subpath to append to the documents directory.
 
 @return The path to the subpath in the documents directory.
 */
- (NSString *)documentsDirectorySubpathByAppendingPath:(NSString *)subpath;

/**
 Get the path to the library directory.
 
 @return The path to the library directory.
 */
- (NSString *)libraryDirectory;

/**
 Get the path to the library directory and append a subpath.
 
 @param subpath The subpath to append to the library directory.
 
 @return The path to the subpath in the library directory.
 */
- (NSString *)libraryDirectorySubpathByAppendingPath:(NSString *)subpath;

/**
 Get the path to the temporary directory.
 
 @return The path to the temporary directory.
 */
- (NSString *)temporaryFileDirectory;

/**
 Get the path to the temporary directory and append a subpath.
 
 @param subpath The subpath to append to the temporary directory.
 
 @return The path to the subpath in the temporary directory.
 */
- (NSString *)temporaryFileDirectorySubpathByAppendingPath:(NSString *)subpath;

@end
