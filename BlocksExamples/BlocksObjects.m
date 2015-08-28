//
//  BlocksObjects.m
//  BlocksExamples
//
//  Created by Gan Chau on 8/27/15.
//  Copyright (c) 2015 GC App. All rights reserved.
//

#import "BlocksObjects.h"

@implementation BlocksObjects

+ (void)simpleMethodWithABlock:(void (^)(NSString *stringParam))stringBlock
{
    stringBlock(@"Passed from the Block.");
}

+ (void)multiplyParam:(NSInteger)firstNum secondParam:(NSUInteger)secondNum completionBlock:(void (^)(BOOL, NSString *))completionBlock
{
    NSInteger multipliedNum = firstNum * secondNum;
    
    if (multipliedNum > 0) {
        NSString *result = [NSString stringWithFormat:@"Result from Block: %li", multipliedNum];
        completionBlock(YES, result);
    } else {
        NSString *result = @"One or more of the parameter was a 0.";
        completionBlock(NO, result);
    }
}

@end
