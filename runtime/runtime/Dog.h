//
//  Dog.h
//  runtime
//
//  Created by 杨晓晨 on 15/10/3.
//  Copyright (c) 2015年 yangxiaochen. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  保存对象成员变量 
 */
@interface Dog : NSObject
@property (nonatomic, copy) NSString *nema;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) double height;
@property (nonatomic, assign) double weight;
@end
