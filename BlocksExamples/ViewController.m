//
//  ViewController.m
//  BlocksExamples
//
//  Created by Gan Chau on 8/27/15.
//  Copyright (c) 2015 GC App. All rights reserved.
//

#import "ViewController.h"
#import "BlocksObjects.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [BlocksObjects simpleMethodWithABlock:^(NSString *stringParam) {
        NSLog(@"%@", stringParam);
    }];
    
    [BlocksObjects multiplyParam:15
                     secondParam:0
                 completionBlock:^(BOOL success, NSString *result) {
                     if (success) {
                         NSLog(@"%@", result);
                     } else {
                         NSLog(@"Error: %@", result);
                     }
                 }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
