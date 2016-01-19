//
//  main.m
//  DeepCopy
//
//  Created by Dr.k on 16/1/19.
//  Copyright © 2016年 Dr.k. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZKMUser.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
        ZKMUser * userOne = [[ZKMUser alloc]initwithName:@"123" age:12 sex:ZKMsexMan];
        ZKMUser * userTwo = [[ZKMUser alloc]initwithName:@"2313" age:34 sex:ZKMsexWoman];
        [userOne addFriend:userOne];
        [userOne addFriend:userTwo];
        [userTwo addFriend:userTwo];
        [userOne print];
        [userTwo print];
        
    }
    return 0;
}
