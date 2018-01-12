//
//  NSString+JXEncrypt.m
//  TextFeildDemo
//
//  Created by yituiyun on 2018/1/9.
//  Copyright © 2018年 yituiyun. All rights reserved.
//

#import "NSString+JXEncrypt.h"
#import "NSData+JXEncrypt.h"
#import "NSData+JXBase64.h"

@implementation NSString (JXEncrypt)
-(NSString*)jx_encryptedWithAESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *encrypted = [[self dataUsingEncoding:NSUTF8StringEncoding] jx_encryptedWithAESUsingKey:key andIV:iv];
    NSString *encryptedString = [encrypted jx_base64EncodedString];
    
    return encryptedString;
}

- (NSString*)jx_decryptedWithAESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *decrypted = [[NSData jx_dataWithBase64EncodedString:self] jx_decryptedWithAESUsingKey:key andIV:iv];
    NSString *decryptedString = [[NSString alloc] initWithData:decrypted encoding:NSUTF8StringEncoding];
    
    return decryptedString;
}

- (NSString*)jx_encryptedWithDESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *encrypted = [[self dataUsingEncoding:NSUTF8StringEncoding] jx_encryptedWithDESUsingKey:key andIV:iv];
    NSString *encryptedString = [encrypted jx_base64EncodedString];
    
    return encryptedString;
}

- (NSString*)jx_decryptedWithDESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *decrypted = [[NSData jx_dataWithBase64EncodedString:self] jx_decryptedWithDESUsingKey:key andIV:iv];
    NSString *decryptedString = [[NSString alloc] initWithData:decrypted encoding:NSUTF8StringEncoding];
    
    return decryptedString;
}

- (NSString*)jx_encryptedWith3DESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *encrypted = [[self dataUsingEncoding:NSUTF8StringEncoding] jx_encryptedWith3DESUsingKey:key andIV:iv];
    NSString *encryptedString = [encrypted jx_base64EncodedString];
    
    return encryptedString;
}

- (NSString*)jx_decryptedWith3DESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *decrypted = [[NSData jx_dataWithBase64EncodedString:self] jx_decryptedWith3DESUsingKey:key andIV:iv];
    NSString *decryptedString = [[NSString alloc] initWithData:decrypted encoding:NSUTF8StringEncoding];
    
    return decryptedString;
}
@end
