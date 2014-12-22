//
//  NSObject+AssociatedObject.m
//  runtimeTest
//
//  Created by wangshuying on 14/12/16.
//  Copyright (c) 2014年 wangshuying. All rights reserved.
//

#import "NSObject+AssociatedObject.h"
#import <objc/runtime.h>

@implementation NSObject (AssociatedObject)

@dynamic name;

@dynamic associatedObject;

- (void)setName:(NSString *)vName {
    objc_setAssociatedObject(self, @selector(name), vName, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)name {
    return objc_getAssociatedObject(self, @selector(name));
}


// 可以指定关联对象（object1）和使用的key（objectKey1）
- (void)setAssociatedObject:(id)associatedObject {
    objc_setAssociatedObject(@"object1", @"objectKey1", associatedObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)associatedObject {
    return objc_getAssociatedObject(@"object1", @"objectKey1");
}
@end
