//
//  Doctor.m
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
    }
    return self;
}



//- (void) askForHealthCard:(id)Patient {
//    if ([Patient hasHealthCard]) {
//        [self.acceptedPatients addObject:Patient];
//
//    }
//}

- (void) acceptPatient:(id)Patient {
    if ([Patient hasHealthCard]) {
        [self.acceptedPatients addObject:Patient];
        NSLog(@"%@ accepts %@ as a patient", self.name, [Patient name]);
    }
    
}

@end
