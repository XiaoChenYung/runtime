//
//  ViewController.m
//  runtime
//
//  Created by 杨晓晨 on 15/10/3.
//  Copyright (c) 2015年 yangxiaochen. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

}

/**
 *  归档和解档测试  成功
 *  作用获取对象所有成员变量的属性
 */
- (void)demoDog {
    //    Dog *dog = [[Dog alloc] init];
    //    dog.age = 50;
    //    dog.weight = 50.5;
    //    dog.height = 1.55;
    //    dog.nema = @"sdafsdf";
    Dog *dog =  [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/yangxiaochen/Desktop/mj/dog.aa"];
    NSLog(@"%@",dog.nema);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
