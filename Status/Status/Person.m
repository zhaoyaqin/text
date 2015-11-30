//
//  Person.m
//  Status
//
//  Created by 赵亚琴 on 15/11/26.
//  Copyright © 2015年 赵亚琴. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name = _name;


- (void)setName:(NSString *)name
{
//    @synchronized(self) {
//        _name = name;
//    }
    NSLock *lock = [[NSLock alloc] init];
    [lock lock];
    _name = name;
    [lock unlock];
}

- (NSString *)name
{
//    @synchronized(self) {
//        return _name;
//    }
//    NSLock *lock = [[NSLock alloc] init];
//    [lock lock];
    return _name;
//    [lock unlock];
}

@end
