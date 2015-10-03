//
//  Dog.m
//  runtime
//
//  Created by 杨晓晨 on 15/10/3.
//  Copyright (c) 2015年 yangxiaochen. All rights reserved.
//

#import "Dog.h"
#import <objc/runtime.h>
//@interface Dog ()<NSCoding>
//
//@end

@implementation Dog
- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        unsigned int outCount = 0;
        Ivar *ivars = class_copyIvarList([self class], &outCount);
        for (int i = 0; i < outCount; ++i) {
            Ivar ivar = ivars[i];
            NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar) ];
            id value = [aDecoder decodeObjectForKey:key];
            [self setValue:value forKeyPath:key];
        }
        free(ivars);
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    unsigned int outCount = 0;
    Ivar *ivars = class_copyIvarList([self class], &outCount);
    for (int i = 0; i < outCount; ++i) {
        Ivar ivar = ivars[i];
        NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar) ];
        id value = [self valueForKeyPath:key];
        [aCoder encodeObject:value forKey:key];
    }
    free(ivars);
}
@end
