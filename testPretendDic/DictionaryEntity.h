//
//  DictionaryEntity.h
//  testPretendDic
//
//  Created by XingYao on 15/4/12.
//  Copyright (c) 2015年 XingYao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DictionaryEntity : NSObject

@property (nonatomic, copy) NSString *name;

- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key;
- (id)objectForKeyedSubscript:(id)key;

@end
