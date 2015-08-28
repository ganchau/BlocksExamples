//
//  BlocksObjects.h
//  BlocksExamples
//
//  Created by Gan Chau on 8/27/15.
//  Copyright (c) 2015 GC App. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlocksObjects : NSObject

+ (void)simpleMethodWithABlock:(void (^)(NSString *stringParam))stringBlock;
+ (void)multiplyParam:(NSInteger)firstNum secondParam:(NSUInteger)secondNum completionBlock:(void (^)(BOOL success, NSString *result))completionBlock;

@end
