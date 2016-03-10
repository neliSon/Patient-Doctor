//
//  Patient.m
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName: (NSString *) name andAge: (int) age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

- (void) visitDoctor: (Doctor *) doctor {
    NSLog(@"%@ is visiting %@.", self.name, doctor.name);
}

- (void) requestMedication:(Doctor *) doctor {
    if ([doctor.acceptedPatients containsObject: self]) {
        NSLog(@"%@ requests for medication from %@", self.name, doctor.name);
    }else{
        NSLog(@"Not an accepted patient.");
    }
}

@end
