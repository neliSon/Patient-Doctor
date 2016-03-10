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
        _acceptedPatients = [NSMutableSet set];
    }
    return self;
}



//- (void) askForHealthCard:(id)Patient {
//    if ([Patient hasHealthCard]) {
//        [self.acceptedPatients addObject:Patient];
//
//    }
//}

- (void) acceptPatient:(Patient *) patient {
    if ([patient hasHealthCard]) {
        [self.acceptedPatients addObject: patient];
        NSLog(@"%@ accepts %@ as a patient", self.name, patient.name);
    }
    
}

@end
