//
//  NSObject+ExtraKeyValue.m
//  ExtraKeyValue
//
//  Created by Kingiol on 13-8-14.
//  Copyright (c) 2013年 Kingiol. All rights reserved.
//

#import "NSObject+ExtraKeyValue.h"

#import <objc/runtime.h>

static const char *extraKeyValueKey = "extraKeyValueKey";

@implementation NSObject (ExtraKeyValue)

- (id)getPropertieValueForKey:(NSString *)key {
    if (key == nil) return nil;
    
    NSDictionary *properties = (NSDictionary *)objc_getAssociatedObject(self, extraKeyValueKey);
    return properties[key];
}

- (void)setPropertieValue:(id)value forKey:(NSString *)key {
    if (key == nil || value == nil) return;
    
    NSMutableDictionary *propertieDict = (NSMutableDictionary *)objc_getAssociatedObject(self, extraKeyValueKey);
    if (propertieDict == nil) {
#if __has_feature(objc_arc)
        //compiling with ARC
        propertieDict = [NSMutableDictionary dictionary];
#else
        // compiling without ARC
        propertieDict = [[NSMutableDictionary alloc] init];
#endif
    }
    propertieDict[key] = value;
    objc_setAssociatedObject(self, extraKeyValueKey, propertieDict, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDictionary *)getAllProperties {
    NSDictionary *returnDict =  (NSDictionary *)objc_getAssociatedObject(self, extraKeyValueKey);
    return returnDict == nil ? @{} : returnDict;
}


- (void)removePropertieForKey:(NSString *)key {
    if (key == nil) return;
    
    NSMutableDictionary *propertieDict = (NSMutableDictionary *)objc_getAssociatedObject(self, extraKeyValueKey);
    if ([[propertieDict allKeys] containsObject:key]) {
        [propertieDict removeObjectForKey:key];
    }
    objc_setAssociatedObject(self, extraKeyValueKey, propertieDict, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)removeAllProperties {
    objc_removeAssociatedObjects(self);
}

@end
