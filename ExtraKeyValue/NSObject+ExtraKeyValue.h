//
//  NSObject+ExtraKeyValue.h
//  ExtraKeyValue
//
//  Created by Kingiol on 13-8-14.
//  Copyright (c) 2013年 Kingiol. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ExtraKeyValue)

- (id)getPropertieValueForKey:(NSString *)key;
- (void)setPropertieValue:(id)value forKey:(NSString *)key;

@end
