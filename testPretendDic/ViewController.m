//
//  ViewController.m
//  testPretendDic
//
//  Created by XingYao on 15/4/12.
//  Copyright (c) 2015年 XingYao. All rights reserved.
//

#import "ViewController.h"
#import "DictionaryEntity.h"
#import "NormalEntity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // NSMutableDictionary
    DictionaryEntity *aa = [[DictionaryEntity alloc] init];
    aa[@"name"] = @"aaa";
    NSLog(@"%s %@",__func__, aa[@"name"]);
    
    [self test1:aa];
    
    
    NormalEntity *bb = [[NormalEntity alloc] init];
    bb[@"name"] = @"aaa";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)test1:(id)objc
{
    objc[@"name"] = @"test1";
    NSLog(@"%s %@",__func__, objc[@"name"]);
}
@end
