//
//  NSDictionary+Merge.h
//  M13Toolkit
/*Copyright (c) 2015 Brandon McQuilkin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import <Foundation/Foundation.h>

@interface NSDictionary (Merge)

/**
 Creates a new dictionary by joining the given dictionary to the receiver.
 
 @param dictionary The dictionary to join.
 @param overwrite  If true, keys that exist in the receiver that also exist in the given dictionary, will be overwritten by the key and value in the given dictionary. If false, values for keys that exist in the receiver will not be overwritten by values in the given dictionary.
 
 @return A new dictionary.
 */
- (NSDictionary *)dictionaryByAddingDictionary:(NSDictionary *)dictionary overwriteExisting:(BOOL)overwrite;

@end
