//
//  API.m
//  BabbleSphere
//
//  Created by Tung Ngo on 5/21/12.
//  Copyright (c) 2012 SETA:CINQ Vietnam., Ltd. All rights reserved.
//

#import "API.h"

@implementation API

+ (API *)sharedInstance
{
    static API *sharedInstance = nil;
    if (sharedInstance == nil) {
        sharedInstance = [[API alloc] init];
    }
    return sharedInstance;
}

@end
