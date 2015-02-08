//
//  NSData+Encrypt.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/8/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSData+Encrypt.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSData (Encrypt)

- (NSData *)AES256EncryptWithKey:(NSString *)key
{
    //The key should be 32 bytes for AES256, will be null-padded otherwise
    char keyPtr[kCCKeySizeAES256 + 1]; //Leave room for the terminator
    //Pad the key with zeros
    bzero(keyPtr, sizeof(keyPtr));
    //Convert the key to data
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    //The output size will always be less than or equal to the input size plus the size of one block.
    NSUInteger dataLength = [self length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesEncrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt, kCCAlgorithmAES128, kCCOptionPKCS7Padding | kCCOptionECBMode, keyPtr, kCCBlockSizeAES128, NULL, [self bytes], dataLength, buffer, bufferSize, &numBytesEncrypted);
    
    if (cryptStatus == kCCSuccess) {
        //Yay, We have data
        return [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
    }
    
    //Release the buffer
    free(buffer);
    return nil;
}

- (NSData *)AES256DecryptWithKey:(NSString *)key
{
    //The key should be 32 bytes for AES256, will be null-padded otherwise
    char keyPtr[kCCKeySizeAES256 + 1];
    //Pad the key with zeros
    bzero(keyPtr, sizeof(keyPtr));
    //Convert the key to data
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    //The output size will always be less than or equal to the input size plus the size of one block.
    NSUInteger dataLength = [self length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesDecrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt, kCCAlgorithmAES128, kCCOptionPKCS7Padding | kCCOptionECBMode, keyPtr, kCCBlockSizeAES128, NULL, [self bytes], dataLength, buffer, bufferSize, &numBytesDecrypted);
    
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
    }
    
    //Release the buffer
    free(buffer);
    return nil;
}

@end
