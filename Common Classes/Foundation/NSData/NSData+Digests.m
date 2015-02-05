//
//  NSData+Digests.m
//  M13Toolkit
/*Copyright (c) 2015 Brandon McQuilkin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "NSData+Digests.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSData (Digests)

- (NSData *)MD2Sum
{
    unsigned char hash[CC_MD2_DIGEST_LENGTH];
    CC_MD2([self bytes], (CC_LONG)[self length], hash);
    return [NSData dataWithBytes:hash length:CC_MD2_DIGEST_LENGTH];
}

- (NSData *)MD4Sum
{
    unsigned char hash[CC_MD4_DIGEST_LENGTH];
    CC_MD4([self bytes], (CC_LONG)[self length], hash);
    return [NSData dataWithBytes:hash length:CC_MD4_DIGEST_LENGTH];
}

- (NSData *)MD5Sum
{
    unsigned char hash[CC_MD5_DIGEST_LENGTH];
    CC_MD5([self bytes], (CC_LONG)[self length], hash);
    return [NSData dataWithBytes:hash length:CC_MD5_DIGEST_LENGTH];
}

- (NSData *)SHA1Hash
{
    unsigned char hash[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1([self bytes], (CC_LONG)[self length], hash);
    return [NSData dataWithBytes:hash length:CC_SHA1_DIGEST_LENGTH];
}

- (NSData *)SHA224Hash
{
    unsigned char hash[CC_SHA224_DIGEST_LENGTH];
    CC_SHA224([self bytes], (CC_LONG)[self length], hash);
    return [NSData dataWithBytes:hash length:CC_SHA224_DIGEST_LENGTH];
}

- (NSData *)SHA256Hash
{
    unsigned char hash[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256([self bytes], (CC_LONG)[self length], hash);
    return [NSData dataWithBytes:hash length:CC_SHA256_DIGEST_LENGTH];
}

- (NSData *)SHA384Hash
{
    unsigned char hash[CC_SHA384_DIGEST_LENGTH];
    CC_SHA384([self bytes], (CC_LONG)[self length], hash);
    return [NSData dataWithBytes:hash length:CC_SHA384_DIGEST_LENGTH];
}

- (NSData *)SHA512Hash
{
    unsigned char hash[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512([self bytes], (CC_LONG)[self length], hash);
    return [NSData dataWithBytes:hash length:CC_SHA512_DIGEST_LENGTH];
}

@end
