//
//  ViewController.m
//  runtimeTest
//
//  Created by wangshuying on 14/12/11.
//  Copyright (c) 2014年 wangshuying. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "NSObject+AssociatedObject.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //AssociatedObject TEST
    NSObject *ob = [[NSObject alloc] init];
    ob.name = @"123";
    
    NSLog(@"name = %@", ob.name);
    
    
    ob.associatedObject = @"abc";
    
    NSLog(@"associatedObject = %@", ob.associatedObject);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//}
@end
