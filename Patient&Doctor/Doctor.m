//
//  Doctor.m
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = self.name;
        _specialization = self.specialization;
    }
    return self;
}

@end
