//
//  NSData+Digests.h
//  M13Toolkit
/*Copyright (c) 2015 Brandon McQuilkin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import <Foundation/Foundation.h>

@interface NSData (Digests)

/**
 Creates the MD2 checksum of the object.
 
 @return The MD2 checksum of the object.
 */
- (NSData *)MD2Sum;

/**
 Creates the MD4 checksum of the object.
 
 @return The MD4 checksum of the object.
 */
- (NSData *)MD4Sum;

/**
 Creates the MD5 checksum of the object.
 
 @return The MD5 checksum of the object.
 */
- (NSData *)MD5Sum;

/**
 Creates the SHA1 hash of the object.
 
 @return The SHA1 hash of the object.
 */
- (NSData *)SHA1Hash;

/**
 Creates the SHA224 hash of the object.
 
 @return The SHA224 hash of the object.
 */
- (NSData *)SHA224Hash;

/**
 Creates the SHA256 hash of the object.
 
 @return The SHA256 hash of the object.
 */
- (NSData *)SHA256Hash;

/**
 Creates the SHA384 hash of the object.
 
 @return The SHA384 hash of the object.
 */
- (NSData *)SHA384Hash;

/**
 Creates the SHA512 hash of the object.
 
 @return The SHA512 hash of the object.
 */
- (NSData *)SHA512Hash;

@end
