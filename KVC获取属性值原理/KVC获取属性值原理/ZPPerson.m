//
//  ZPPerson.m
//  KVC获取属性值原理
//
//  Created by 赵鹏 on 2019/5/9.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ZPPerson.h"

@implementation ZPPerson

//- (int)getAge
//{
//    return 11;
//}

//- (int)age
//{
//    return 12;
//}

//- (int)isAge
//{
//    return 13;
//}

//- (int)_age
//{
//    return 14;
//}

//是否可以直接访问本类的成员变量：YES可以直接访问成员变量，NO不能直接访问成员变量，默认返回YES。
+ (BOOL)accessInstanceVariablesDirectly
{
    return YES;
}

@end
