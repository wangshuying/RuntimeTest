//
//  NSObject+AssociatedObject.h
//  runtimeTest
//
//  Created by wangshuying on 14/12/16.
//  Copyright (c) 2014年 wangshuying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AssociatedObject)

@property (nonatomic) NSString *name;

@property (nonatomic) id associatedObject;

@end
