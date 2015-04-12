//
//  DictionaryEntity.m
//  testPretendDic
//
//  Created by XingYao on 15/4/12.
//  Copyright (c) 2015年 XingYao. All rights reserved.
//

#import "DictionaryEntity.h"

@implementation DictionaryEntity

- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key
{
    [self setValue:obj forKeyPath:key];
}

- (id)objectForKeyedSubscript:(id)key
{
    return [self valueForKeyPath:key];
}

@end
