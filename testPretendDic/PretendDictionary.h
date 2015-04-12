//
//  PretendDictionary.h
//  testPretendDic
//
//  Created by XingYao on 15/4/12.
//  Copyright (c) 2015年 XingYao. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PretendDictionaryProtocol<NSObject>

- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key;
- (id)objectForKeyedSubscript:(id)key;

@end


@interface PretendDictionary : NSObject

@end

#define AS_PretendDictionary(__class) \
@interface __class (PretendDictionary)   \
- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key;    \
- (id)objectForKeyedSubscript:(id)key;  \
@end

#define DEF_PretendDictionary(__class) \
@implementation __class (PretendDictionary) \
- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key \
{   \
    [self setValue:obj forKeyPath:(NSString *)key]; \
}   \
- (id)objectForKeyedSubscript:(id)key   \
{   \
    return [self valueForKeyPath:key];  \
}   \
@end