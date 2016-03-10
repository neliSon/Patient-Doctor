//
//  Patient.m
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = self.name;
        _age = self.age;
    }
    return self;
}

@end
