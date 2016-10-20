//
//  myOC.m
//  OOPSwift
//
//  Created by huangshuimei on 15/7/19.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "myOC.h"
#import "OOPSwift-swift.h"

@implementation myOC

- (instancetype) init {
 
    if (self = [super init]) {
        NSLog(@"i am oc");
        ViewController *vc = [[ViewController alloc] init];
        [vc printSwift];
        

    }
    return self;
}

- (void)printOC {
    NSLog(@"hello oc");
}

@end
