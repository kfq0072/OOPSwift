//
//  myOC.m
//  OOPSwift
//
//  Created by huangshuimei on 15/7/19.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "MyOC.h"
#import "OOPSwift-swift.h"

@implementation MyOC

- (instancetype) init {
 
    if (self = [super init]) {
        ViewController *vc = [[ViewController alloc] init];
        [vc transferSwiftByOC];
    }
    return self;
}

- (void)transferOCBySwift {
    NSLog(@"i am oc");
}



@end
