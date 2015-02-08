//
//  NSData+Encrypt.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/8/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Encrypt)

/**
 Encrypt the receiver with an AES256 encryption using the given key.
 
 @param key The key to use to encrypt the given data with.
 
 @return Encrypted data.
 */
- (NSData *)AES256EncryptWithKey:(NSString *)key;

/**
 Decrypt the receiver that is encrypted with an AES256 encryption using the given key.
 
 @param key The key to use to decrypt the data with.
 
 @return Decrypted data.
 */
- (NSData *)AES256DecryptWithKey:(NSString *)key;


@end
