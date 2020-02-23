//
//  ViewController.m
//  KVC获取属性值原理
//
//  Created by 赵鹏 on 2019/5/9.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ViewController.h"
#import "ZPPerson.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ZPPerson *person = [[ZPPerson alloc] init];
    person->_age = 10;
    person->_isAge = 11;
    person->age = 12;
    person->isAge = 13;
    
    /**
     通过KVC方式获取对象的属性值或者成员变量值的原理：
     当调用KVC的"valueForKey:"方法以后，系统会先在对象类的.m文件中按照getKey、key、isKey、_key的顺序查找这些实例方法，如果找到的话就返回这些方法里面的返回值，从而达到了通过KVC的方式获取对象的属性值的目的。如果上述的那些实例方法都没有找到的话就接着再在这个.m文件中寻找"accessInstanceVariablesDirectly"类方法，如果找到的话就查看这个方法的返回值，如果返回值为NO，则意味着不能访问这个对象类的成员变量，程序会崩溃，在控制台中会抛出异常"NSUnknownKeyException"。如果返回值为YES，则意味着可以直接访问这个对象类里面的成员变量，并且会按照_key、_isKey、key、isKey的顺序来查找成员变量，如果找到的话则获取它的值，如果还是没有找到的话则程序会崩溃，并且在控制台中会抛出异常"NSUnknownKeyException"。
     
     */
    NSLog(@"%@", [person valueForKey:@"age"]);
}

@end
